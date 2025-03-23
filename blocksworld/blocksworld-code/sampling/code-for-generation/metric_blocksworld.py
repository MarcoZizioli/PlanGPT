import glob
import json
import time
import re
import os

dict_actions_b = {}
dict_predicates_b = {}
dict_objects_b = {}

dict_actions_b["pickup"] = (
    ["ob"],
    ["clear 0", "on-table 0", "arm-empty"],
    ["holding 0"],
    ["clear 0", "on-table 0", "arm-empty"],
)
dict_actions_b["putdown"] = (
    ["ob"],
    ["holding 0"],
    ["clear 0", "on-table 0", "arm-empty"],
    ["holding 0"],
)
dict_actions_b["stack"] = (
    ["ob", "ob"],
    ["clear 1", "holding 0"],
    ["clear 0", "on 0 1", "arm-empty"],
    ["clear 1", "holding 0"],
)
dict_actions_b["unstack"] = (
    ["ob", "ob"],
    ["clear 0", "on 0 1", "arm-empty"],
    ["clear 1", "holding 0"],
    ["clear 0", "on 0 1", "arm-empty"],
)

dict_predicates_b["clear"] = (["ob"],)
dict_predicates_b["on-table"] = (["ob"],)
dict_predicates_b["holding"] = (["ob"],)
dict_predicates_b["on"] = (["ob", "ob"],)
dict_predicates_b["arm-empty"] = ([""],)

dict_predicates_b["ob"] = (["ob"],)

#dict_objects_b["ob"] = ["a", "b", "c", "d", "e", "f", "g", "h", "i","j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
#                        "w", "x", "y", "z"]
dict_objects_b["ob"] = ["b"]

convert_action_b = {}
convert_action_b["ontable"] = "on-table"
convert_action_b["handempty"] = "arm-empty"
# convert_action_b[" a "] = " b1 "
# convert_action_b[" b "] = " b2 "
# convert_action_b[" c "] = " b3 "
# convert_action_b[" d "] = " b4 "
# convert_action_b[" e "] = " b5 "
# convert_action_b[" f "] = " b6 "
# convert_action_b[" g "] = " b7 "
# convert_action_b[" h "] = " b8 "
# convert_action_b[" i "] = " b9 "
# convert_action_b[" j "] = " b10 "
# convert_action_b[" k "] = " b11 "
# convert_action_b[" l "] = " b12 "
# convert_action_b[" m "] = " b13 "
# convert_action_b[" n "] = " b14 "
# convert_action_b[" o "] = " b15 " 
# convert_action_b[" p "] = " b16 "
# convert_action_b[" q "] = " b17 "
# convert_action_b[" r "] = " b18 "
# convert_action_b[" s "] = " b19 "
# convert_action_b[" t "] = " b20 "
# convert_action_b[" u "] = " b21 "
# convert_action_b[" v "] = " b22 "
# convert_action_b[" w "] = " b23 " 
# convert_action_b[" x "] = " b24 "
# convert_action_b[" y "] = " b25 "
# convert_action_b[" z "] = " b26 "
convert_action_b1 = {}

dict_actions_domain = {}
dict_predicates_domain = {}
dict_objects_domain = {}
convert_action_domain = {}
convert_action_domain1 = {}

dict_actions_domain["blocksworld"] = dict_actions_b
dict_predicates_domain["blocksworld"] = dict_predicates_b
dict_objects_domain["blocksworld"] = dict_objects_b
convert_action_domain["blocksworld"] = convert_action_b

def estrai_lettere(input):
    lettere = []
    for parola in input.split():
        if len(parola) == 1:
            if parola not in lettere:
                lettere.append(parola)
    return lettere

def unite_actions(input, keywords, domain, separator="_"):       
    for conversion in convert_action_domain[domain].keys():                  
        input = input.replace(conversion, convert_action_domain[domain][conversion])   
    for conversion in convert_action_domain1[domain].keys():           
        input = input.replace(conversion, convert_action_domain1[domain][conversion])      
    list_to_unite = input.split()    
    index_actions = []
    for idx, token in enumerate(list_to_unite):
        if token in keywords:            
            index_actions.append(idx)    
    index_actions.append(len(list_to_unite))
    new_list = []
    for i in range(len(index_actions) - 1):        
        new_action = " ".join(list_to_unite[index_actions[i] : index_actions[i + 1]])        
        new_list.append(new_action.replace(" ", separator))
    return new_list

def initial_state(path):
    with open(path, "r") as f:
        righe = f.readlines()
        inizio = False
        state = ""        

        for riga in righe:
            riga = riga.strip().replace("(", "").replace(")", "").lower()           

            if riga == "":
                inizio = False
            if inizio:
                state += riga + " "
            if riga == ":init":
                inizio = True

    return state

def get_goals(path):
    goals = []
    with open(path, "r") as f:
        righe = f.readlines()
        for riga in righe:
            riga = riga.strip().replace("(", "").replace(")", "").replace(", ", " ").replace(",", " ").lower()
            riga = riga + " "
            goals.append(riga)
    return goals

def get_actions(path):
    actions = []
    with open(path, "r") as f:
        righe = f.readlines()
        for riga in righe:
            riga = riga.strip().replace("(", "").replace(")", "").replace("-", "").lower()            
            actions.append(riga)
    return actions

def create_starting_structures(plan, domain):

    initial_states = (
        plan["input"].split("<|goals|>")[0].strip().split("<|startofplan|>")[1].strip()
    )  
       
    goal_states = (
        plan["input"].split("<|goals|>")[1].strip().split("<|actions|>")[0].strip()
    )
    
    initial_states = unite_actions(
        initial_states, list(dict_predicates_domain[domain].keys()), domain
    )
    goal_states = unite_actions(
        goal_states, list(dict_predicates_domain[domain].keys()), domain
    )
    if "<|endofplan|>" in plan["actions"]:
        actions = unite_actions(
            plan["actions"].split("<|endofplan|>").strip(),
            list(dict_actions_domain[domain].keys()),
            domain,
        )
    else:
        actions = unite_actions(
            plan["actions"], list(dict_actions_domain[domain].keys()), domain
        )
        
    
    dict_states = {}
    dict_goals = {}
    for init_state in initial_states:
        dict_states[init_state] = True
    for goal_state in goal_states:
        if goal_state in initial_states:
            dict_goals[goal_state] = True
        else:
            dict_goals[goal_state] = False    
    return (dict_states, dict_goals, actions)

def rimuovi_numeri(stringa):
    return "".join([i for i in stringa if not i.isdigit()])

def check_goals(states, goal_states, domain):
    all_goals_satisfied = True
    goals_unsatisfied_list = []
    goals_unsatisfied_list_nonumber = []
    # print(goal_states)
    for goal in goal_states.keys():
        # print("Analizzo il goal " + goal)
        if goal not in states.keys():
            goal_states[goal] = False
            all_goals_satisfied = False
            goals_unsatisfied_list.append(goal)
            goals_unsatisfied_list_nonumber.append(rimuovi_numeri(goal))
            # print("Il mio goal non è negli stati visti")
        elif states[goal] is False:
            goal_states[goal] = False
            all_goals_satisfied = False
            goals_unsatisfied_list.append(goal)
            goals_unsatisfied_list_nonumber.append(rimuovi_numeri(goal))
            # print("Il mio goal è negli stati visti falso")
        else:
            goal_states[goal] = True
            # print("Il mio goal è negli stati visti vero")
    if all_goals_satisfied is True:
        return (True, goal_states, "goals_succesfull")
    else:
        return (
            False,
            goal_states,
            "goals_not_succesfull",
            goals_unsatisfied_list_nonumber,
            goals_unsatisfied_list,
        )
        
def execute_action(states, action, domain):
    # Return a Tuple
    # in the first position the result True, False
    # in the second position the next state if result is True or the current state if it is False
    # in the third position the motivation of the wrong execution
    # split my action, on position 0 the action, then the objects
    # print(action)
    splitted_action = action.split("_")[0]  # prendo il nome della mia azione
    try:
        action_parameter = dict_actions_domain[domain][
            splitted_action
        ]  # verifico che l'azione esiste
    except:
        action_parameter = None
    if action_parameter is None:
        return (False, states, "action_name_wrong", splitted_action, action, "")
    splitted_objects = action.split("_")[
        1:
    ]  # ottengo il nome dei miei oggetti definiti nel mio problema
    action_objects = action_parameter[0]  # ottengo gli oggetti accettati dall'azione
    if len(action_objects) == len(
        splitted_objects
    ):  # verifico che gli oggetti siano in egual numero rispetto a quanti ne richiede la mia azione
        for i in range(0, len(action_objects)):  # scorro i miei oggetti
            obj_nonumber = "".join(
                [j for j in splitted_objects[i] if not j.isdigit()]
            )  # calcolo il mio nome dell'oggetto senza tener conto dei numeri
            if (
                obj_nonumber not in dict_objects_domain[domain][action_objects[i]]
            ):  # verifico che l'oggetto si trovi nella lista di nomi possibili associata alla descrizione dell'azione
                print("Errore: " + obj_nonumber + " non è un oggetto valido per " + action_objects[i])
                print("Gli oggetti validi sono: " + str(dict_objects_domain[domain][action_objects[i]]))
                return (
                    False,
                    states,
                    "object_name_wrong",
                    splitted_action,
                    obj_nonumber,
                    splitted_objects[i],
                )
    else:
        return (
            False,
            states,
            "object_number_wrong",
            splitted_action,
            len(action_objects),
            len(splitted_objects),
        )

    action_prec = action_parameter[1]  # prendo le precondizioni della mia azione
    violed_precondtion = False
    violed_preconditions_list = []
    violed_preconditions_list_nonumber = []
    for prec in action_prec:  # scorro le mie precondizioni
        prec_list = prec.split(" ")
        prec_parametrized = "" + prec_list[0]  # metto il mio predicato
        for obj in prec_list[1:]:  # scorro gli oggetti della mia precondizione
            prec_parametrized = (
                prec_parametrized + "_" + splitted_objects[int(obj)]
            )  # sostituisco gli oggetti generici ai miei oggetti del problema
        if (
            prec_parametrized not in states.keys()
        ):  # controllo se la mia precondizione esiste come chiave del dizionario (se non esiste non è vera)
            violed_precondtion = True
            violed_preconditions_list.append(prec_parametrized)
            violed_preconditions_list_nonumber.append(rimuovi_numeri(prec_parametrized))
        elif (
            states[prec_parametrized] is False
        ):  # controllo che la mia precondizione sia vera per eseguire l'azione
            violed_precondtion = True
            violed_preconditions_list.append(prec_parametrized)
            violed_preconditions_list_nonumber.append(rimuovi_numeri(prec_parametrized))
        else:
            pass
    if violed_precondtion is True:
        return (
            False,
            states,
            "violed_preconditions",
            violed_preconditions_list_nonumber,
            violed_preconditions_list,
            splitted_action,
        )

    # eseguo gli effetti negativi
    action_neg = action_parameter[3]  # prendo i miei effetti negativi
    for neg in action_neg:  # li scorro
        neg_list = neg.split(" ")
        neg_parametrized = "" + neg_list[0]  # ottengo il mio predicato
        for obj in neg_list[1:]:  # per ogni oggetto (rappresentato come indice)
            neg_parametrized = (
                neg_parametrized + "_" + splitted_objects[int(obj)]
            )  # vado a sostituirlo col corrispettivo dell'azione in corso
        states[neg_parametrized] = False  # cambio il valore nei miei stati
        # print("ho reso falso " + neg_parametrized)

    # eseguo gli effetti additivi
    action_plus = action_parameter[2]  # prendo i miei effetti additivi
    for plus in action_plus:  # li scorro
        plus_list = plus.split(" ")
        plus_parametrized = "" + plus_list[0]  # ottengo il mio predicato
        for obj in plus_list[1:]:  # per ogni oggetto (rappresentato come indice)
            plus_parametrized = (
                plus_parametrized + "_" + splitted_objects[int(obj)]
            )  # vado a sostituirlo col corrispettivo dell'azione in corso
        states[plus_parametrized] = True  # cambio il valore nei miei stati
        # print("ho reso vero " + plus_parametrized)

    return (True, states, "action_succesfull")

def check_violated_preconditions(plan, domain):
    init_structures = create_starting_structures(plan, domain)
    init_state = init_structures[0]
    goal_state = init_structures[1]
    actions = init_structures[2]
    if len(actions) == 0 and len(plan["actions"]) != 0:
        return True  # Il modello ha generato i token iniziali diversi da azioni (parole a caso)
    # print("Actions ", actions)
    result_goals = check_goals(init_state, goal_state, domain)
    state = init_state
    for action in actions:
        result = execute_action(state, action, domain)
        # print("Res action ", result)
        if result[0] is True:
            state = result[1]
        else:
            error_type = result[2]
            if error_type == "object_name_wrong":
                return True
            elif error_type == "object_number_wrong":
                if result[4] > result[5]:
                    return False
                else:
                    return True
            elif error_type == "violed_preconditions":
                return True
            elif error_type == "action_name_wrong":
                return True
    return False

def calculate_reward(plan, domain):
    
    init_structures = create_starting_structures(plan, domain)
    init_state = init_structures[0]
    goal_state = init_structures[1]
    actions = init_structures[2]

    start = time.time()

    result_goals = check_goals(init_state, goal_state, domain)
    if result_goals[0] is True:
        return 1
    else:
        pass
    state = init_state
    j = 0
    for action in actions:
        start_act = time.time()
        result = execute_action(state, action, domain)
        if result[0] is True:
            # print(result[2])
            state = result[1]
            result_goals = check_goals(state, goal_state, domain)
            if result_goals[0] is True:
                return 1
            else:
                pass
                # print(result_goals[2])
        else:
            result_goals = check_goals(state, goal_state, domain)
            goals_satisfied = result_goals[1]
            count = 0
            n_goals = len(goals_satisfied.keys())
            for goal in goals_satisfied.keys():
                if goals_satisfied[goal] is True:
                    count += 1
            if check_violated_preconditions(plan, domain) is True:
                return (count / n_goals) - 1
            else:
                return count / n_goals
        j = j + 1
        end_act = time.time()
        # print("Ho impiegato per fare una azione: " + str(end_act-start_act))

    number_missing_actions = len(actions) - j
    end = time.time()
    # print("Ho impiegato " + str(end-start))
    goals_satisfied = result_goals[1]
    count = 0
    n_goals = len(goals_satisfied.keys())
    for goal in goals_satisfied.keys():
        if goals_satisfied[goal] is True:
            count += 1
    return count / n_goals

def parse_problem(plan, domain):   
            
    init_structures = create_starting_structures(plan, domain) # riporta i dizionari dei fluenti iniziali e dei fluenti obiettivo e l'inisieme delle azioni generate
    init_state = init_structures[0]  # dizionario con tutti i fluenti iniziali con assocciato il valore true
    goal_state = init_structures[1]  # dizionario con i fluenti obiettivo con associato il valore true o false in base ai fluenti iniziali
    actions = init_structures[2]     # vettore contenente le azioni generate da planGPT
    
    start = time.time()

    result_goals = check_goals(init_state, goal_state, domain)   
        
    if result_goals[0] is True:
        return (result_goals[0], result_goals[1], result_goals[2], len(actions))
        # print(result_goals[2])
    else:
        pass
        # print(result_goals[2])

    state = init_state    
    j = 0
    for action in actions:
        start_act = time.time()
        result = execute_action(state, action, domain)
        if result[0] is True:
            # print(result[2])
            state = result[1]
            result_goals = check_goals(state, goal_state, domain)
            if result_goals[0] is True:
                # print(result_goals[2])
                j = j + 1
                break
            else:
                pass
                # print(result_goals[2])
        else:
            result_goals = check_goals(state, goal_state, domain)
            return (
                result[0],
                result_goals[1],
                result[2],
                result[3],
                result[4],
                result[5],
                j,
            )
            # print(result[2])
            # print(result[1])
            break
        j = j + 1
        end_act = time.time()
        # print("Ho impiegato per fare una azione: " + str(end_act-start_act))

    number_missing_actions = len(actions) - j
    end = time.time()
    # print("Ho impiegato " + str(end-start))
    return (result_goals[0], result_goals[1], result_goals[2], number_missing_actions)