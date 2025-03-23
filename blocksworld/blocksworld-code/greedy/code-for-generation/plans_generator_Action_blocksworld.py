import torch
import random
from transformers.generation import (
    StoppingCriteria,
    StoppingCriteriaList,
    BeamSearchScorer,
    LogitsProcessorList,
    MaxLengthCriteria,
)
from transformers import LogitsProcessor
import numpy as np
from transformers import AutoTokenizer, AutoModelForCausalLM
from typing import Optional, Union, Tuple, List
import metric_blocksworld as metric
from datasets import load_from_disk
from tqdm import tqdm
from transformers import GPT2LMHeadModel, GenerationConfig
from transformers import HfArgumentParser
import os
import sys
from dataclasses import dataclass, field
from datasets import Dataset
import pandas as pd
import os
import json
import time

@dataclass
class PlanGeneratorArguments:
    domain: str = field(
        default="blocksworld",
        metadata={"help": "The domain of the problems"},
    )
    model_dir: str = field(
        default="output_new_finetuning_more_batch/checkpoint-258502/",
        metadata={"help": "The model directory"},
    )
    dataset_dir: str = field(
        default="data/ipc/blocksworld/random_new_correct_with_invariants_and_types/",
        metadata={"help": "The dataset directory"},
    )
    add_start: bool = field(
        default=False,
        metadata={"help": "Add the start token to the prompt"},
    )
    split_dataset: str = field(
        default="validation",
        metadata={"help": "The split of the dataset to use"},
    )
    output_dir: str = field(
        default="output_coverage_beam_search/",
        metadata={"help": "The output directory"},
    )
    # generation parameters
    num_beams: int = field(
        default=1,
        metadata={"help": "The number of beams to track"},
    )
    num_return_beams: int = field(
        default=1,
        metadata={"help": "The number of beams to return"},
    )
    max_length: int = field(
        default=2048,
        metadata={"help": "The maximum length of the generated plan"},
    )   
    do_sample: bool = field(
        default=False,
        metadata={"help": "If to sample the generation"},
    )
    top_p: float = field(
        default=1.0,
        metadata={"help": "The top_p parameter for the generation"},
    )
    
def main():
    parser = HfArgumentParser(PlanGeneratorArguments)
    (args,) = parser.parse_json_file(json_file=os.path.abspath(sys.argv[1]))
    dataset_dir = args.dataset_dir
    model_path = args.model_dir
    domain = args.domain
    print(dataset_dir, model_path, domain)
    # check if exists
    if not os.path.exists(args.output_dir):
        os.makedirs(args.output_dir, exist_ok=True)

    tokenizer = AutoTokenizer.from_pretrained(model_path)
    if "ape" in model_path:
        model = GPT2_ape.from_pretrained(model_path) 
    else:
        model = AutoModelForCausalLM.from_pretrained(model_path)
    model.to("cuda")

    generation_config = GenerationConfig(
        num_beams=args.num_beams,
        max_length=args.max_length,
        do_sample=args.do_sample,
        num_return_sequences=args.num_return_beams,
        top_p=args.top_p,
    )
    print("Generation config loaded")
    # print("Generation mode: ", generation_config.get_generation_mode()) # works only with transformers 4.40 +
    
    parser_p = HfArgumentParser(PlanGeneratorArguments) 
    (pererira,) = parser_p.parse_json_file(json_file=os.path.abspath(sys.argv[2]))
    dataset_dir_p = pererira.dataset_dir
    model_path_p = pererira.model_dir
    domain_p = pererira.domain
    print(dataset_dir_p, model_path_p, domain_p)
    # check if exists
    if not os.path.exists(pererira.output_dir):
        os.makedirs(pererira.output_dir, exist_ok=True)
        
    tokenizer_pereira = AutoTokenizer.from_pretrained(model_path_p)
    if "ape" in model_path_p:
        model_pereira = GPT2_ape.from_pretrained(model_path_p)
    else:    
        model_pereira = AutoModelForCausalLM.from_pretrained(model_path_p)
    model_pereira.to("cuda")

    generation_config_pereira = GenerationConfig(
            num_beams=pererira.num_beams,
            max_length=pererira.max_length,
            do_sample=pererira.do_sample,
            num_return_sequences=pererira.num_return_beams,
            top_p=pererira.top_p,
    )
    print("Generation config loaded")
    # print("Generation mode: ", generation_config.get_generation_mode()) # works only with transformers 4.40 +  
        
    counter = 0 
    generation_output = []
    total_plans = 0
    tot_time = 0 
    v=0

    for folder in os.listdir(dataset_dir):   
        convert_action_b1 = {}
        v+=1
        print(v, folder)
        cont=0
        cont_action=0
        for file in os.listdir(os.path.join(dataset_dir, folder)):
            path = os.path.join(dataset_dir, folder, file)
            if file == "template.pddl":
                state = metric.initial_state(path)                
            elif file == "hyps.dat":
                goals = metric.get_goals(path) 
            elif file == "obs.dat":
                actions = metric.get_actions(path)              
            elif file == "real_hyp.dat":
                real_goal = metric.get_goals(path)
    
        lettere_conversion = metric.estrai_lettere(state)   
        
        for idx, lettera in enumerate(lettere_conversion):            
            convert_action_b1[f" {lettera} "] = f" b{idx+1} "
        #print(convert_action_b1)
        metric.convert_action_domain1["blocksworld"] = convert_action_b1
        
        state = metric.unite_actions(
            state,
            list(metric.dict_predicates_domain[domain].keys()),
            domain,
        )
        state = [x.replace("_", " ") for x in state]
        state = sorted(state)
        state = " ".join(state)    
        
        for r_goal in real_goal:
            r_goal = metric.unite_actions(
                r_goal,
                list(metric.dict_predicates_domain[domain].keys()),
                domain,
            )
            r_goal = [x.replace("_", " ") for x in r_goal]
            r_goal = sorted(r_goal)
            r_goal = " ".join(r_goal)
        
        prompts = []
        prompts_tokenized = []
        prompts_tokenized_pereira = []
        goals_sorted = []
        for goal in goals:
            goal = metric.unite_actions(
                goal,
                list(metric.dict_predicates_domain[domain].keys()),
                domain,
            )

            goal = [x.replace("_", " ") for x in goal]
            goal = sorted(goal)
            goal = " ".join(goal)
            goals_sorted.append(goal)
            prompt = state + " <|goals|> " + goal + " <|actions|> "
            prompts.append(prompt)
            if "clear" in goal:
                prompt_tokenized = tokenizer_pereira(prompt, return_tensors="pt", truncation=True, max_length=args.max_length)
                prompt_tokenized = prompt_tokenized["input_ids"].to(model_pereira.device)
                prompts_tokenized_pereira.append(prompt_tokenized) 
            else:
                prompt_tokenized = tokenizer(prompt, return_tensors="pt", truncation=True, max_length=args.max_length)
                prompt_tokenized = prompt_tokenized["input_ids"].to(model.device)
                prompts_tokenized.append(prompt_tokenized)   
                
            for action in actions:  
                action = action + " "
                for conversion in metric.convert_action_domain[domain].keys():         
                    action = action.replace(conversion, metric.convert_action_domain[domain][conversion])             
                for conversion in metric.convert_action_domain1[domain].keys():         
                    action = action.replace(conversion, metric.convert_action_domain1[domain][conversion])        
                prompt = prompt + action   
                #print(prompt)
                prompts.append(prompt)
                if "clear" in goal:
                    prompt_tokenized = tokenizer_pereira(prompt, return_tensors="pt", truncation=True, max_length=args.max_length)
                    prompt_tokenized = prompt_tokenized["input_ids"].to(model_pereira.device)
                    prompts_tokenized_pereira.append(prompt_tokenized) 
                else:
                    prompt_tokenized = tokenizer(prompt, return_tensors="pt", truncation=True, max_length=args.max_length)
                    prompt_tokenized = prompt_tokenized["input_ids"].to(model.device)
                    prompts_tokenized.append(prompt_tokenized)   

        for prompt_tokenized in prompts_tokenized_pereira:   
                     
            with torch.inference_mode():                
                start_time = time.time()
                generated = model_pereira.generate(
                    prompt_tokenized,
                    pad_token_id=tokenizer_pereira.eos_token_id,
                    max_length=args.max_length,
                    generation_config=generation_config_pereira,
                )
                end_time = time.time()
                delta_time = end_time - start_time
                tot_time+=delta_time
                
            found_true = False
            plans = []
            for index, output_tokenized in enumerate(generated):
                output = tokenizer_pereira.decode(output_tokenized)                                
                inputs = output.split("<|actions|>")[0]
                plan = output.split("<|actions|>")[1]
                #print(plan)
                if "<|endofplan|>" in plan:        
                    plan = plan.split("<|endofplan|>")[0]
                plan = plan.replace("<|endofplan|>", "")
                plan = plan.replace("<|startofplan|>", "")
                plan = plan.replace("<|pad|>", "")
                p = {"input": inputs, "actions": plan}       
                res = metric.parse_problem(p, domain=domain)   
                metric_goals_satisfated = metric.calculate_reward(p,domain=domain)   
                plans.append({"plan": plan, "result": res})  
                if res[0] is True:
                    found_true = True
                
            if found_true is True:
                counter += 1            
            
            actions_string = " ".join(actions) 
            actions_string= actions_string + " "
            for conversion in metric.convert_action_domain[domain].keys():         
                actions_string = actions_string.replace(conversion, metric.convert_action_domain[domain][conversion]) 
            for conversion in metric.convert_action_domain1[domain].keys():         
                actions_string = actions_string.replace(conversion, metric.convert_action_domain1[domain][conversion]) 
            
            if r_goal == goals_sorted[cont]:  
                true_goal = True                        
            else:
                true_goal = False
                
            generation_output.append(
                {
                    "name": folder,
                    "goal": goals[cont],
                    "input": prompts[cont], #cont or cont_action
                    "action": prompts[cont_action].split("<|actions|>")[1],
                    "true_goal": true_goal,
                    "actions": actions_string,
                    "plans": plans,
                    "value of the metric goals satisfated": metric_goals_satisfated,  
                    "time": format(delta_time, ".2f"),
                }
            )  
            cont_action+=1
            if cont_action > len(actions):            
                total_plans+=cont_action            
                cont_action=0
                cont+=1 
        
        for prompt_tokenized in prompts_tokenized:   
                    
            with torch.inference_mode():                
                start_time = time.time()
                generated = model.generate(
                    prompt_tokenized,
                    pad_token_id=tokenizer.eos_token_id,
                    max_length=args.max_length,
                    generation_config=generation_config,
                )
                end_time = time.time()
                delta_time = end_time - start_time
                tot_time+=delta_time
                
            found_true = False
            plans = []
            for index, output_tokenized in enumerate(generated):
                output = tokenizer.decode(output_tokenized)                                
                inputs = output.split("<|actions|>")[0]
                plan = output.split("<|actions|>")[1]
                #print(plan)
                if "<|endofplan|>" in plan:        
                    plan = plan.split("<|endofplan|>")[0]
                plan = plan.replace("<|endofplan|>", "")
                plan = plan.replace("<|startofplan|>", "")
                plan = plan.replace("<|pad|>", "")
                p = {"input": inputs, "actions": plan}       
                res = metric.parse_problem(p, domain=domain)   
                metric_goals_satisfated=metric.calculate_reward(p,domain=domain)   
                plans.append({"plan": plan, "result": res})  
                if res[0] is True:
                    found_true = True
                
            if found_true is True:
                counter += 1            
            
            actions_string = " ".join(actions) 
            actions_string= actions_string + " "
            for conversion in metric.convert_action_domain[domain].keys():         
                actions_string = actions_string.replace(conversion, metric.convert_action_domain[domain][conversion]) 
            
            if r_goal == goals_sorted[cont]:  
                true_goal = True                        
            else:
                true_goal = False
                
            generation_output.append(
                {
                    "name": folder,
                    "goal": goals[cont],
                    "input": prompts[cont], #cont or cont_action
                    "action": prompts[cont_action].split("<|actions|>")[1],
                    "true_goal": true_goal,
                    "actions": actions_string,
                    "plans": plans,
                    "value of the metric goals satisfated": metric_goals_satisfated, 
                    "time": format(delta_time, ".2f"),
                }
            )  
            cont_action+=1
            if cont_action > len(actions):            
                total_plans+=cont_action            
                cont_action=0
                cont+=1 
            
        
        # Save the last batch
        with open(
            os.path.join(args.output_dir, f"generation_output_100p_actions.json"),
            "w",
        ) as f:
            json.dump(generation_output, f, indent=4) 
            
        with open(os.path.join(args.output_dir, f"generation_results_100p_actions.txt"), "w") as f:
            f.write(f"Correct plans: {counter}\n")
            f.write(f"Total plans: {total_plans}\n")
            percent = counter / total_plans * 100.0
            f.write(f"Coverage: {percent}%\n")  
            f.write(f"Total time: {tot_time}\n")  
        
if __name__ == "__main__":
    main()
