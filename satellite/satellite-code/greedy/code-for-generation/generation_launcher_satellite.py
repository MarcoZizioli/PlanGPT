import subprocess
import json
import os
import re


def main():
    domains = ["satellite"]

    for domain in domains:
        for mode in ["greedy"]:
            print(f"### Generazione con {domain} e {mode}")
            path = f"config.json"
            params = {
                "domain": domain,
                "model_dir": f"/root/mzizioli/planGPT-OGR/models/{domain}/", 
                "dataset_dir": f"/root/mzizioli/planGPT-OGR/{domain}-dataset-tesi/",
                "num_beams": 1,
                "num_return_beams": 1,
                "split_dataset": "test",
                "output_dir": f"/root/mzizioli/planGPT-OGR/{domain}-generations-tesi/greedy/",
            }
            with open(path, "w") as file:
                tmp = json.dumps(params, indent=4)
                file.write(tmp)
            with open(path, "r") as file:
                # Carica il contenuto del file JSON in una variabile
                data = json.load(file)
            print("### Generazione con " + path)
            print(json.dumps(data, indent=4))  
            
            subprocess.call(
                [
                    "python3",
                    "planGPT-OGR/scripts/plans_generator_Action_satellite.py",
                    path,                    
                ]
            )
main()