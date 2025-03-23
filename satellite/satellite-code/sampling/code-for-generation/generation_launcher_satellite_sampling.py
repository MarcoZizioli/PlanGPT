import subprocess
import json
import os
import re


def main():
    domains = ["satellite"]

    '''
    parametri di sampling
    "top_p": 0.95,
    "do_sample": True,
    "num_return_beams": 10,
    '''
    for domain in domains:
        for mode in ["sampling"]:
            print(f"### Generazione con {domain} e {mode}")
            path = f"config.json"
            params = {
                "domain": domain,
                "model_dir": f"/root/mzizioli/planGPT-OGR/models/{domain}/", 
                "dataset_dir": f"/root/mzizioli/planGPT-OGR/{domain}-dataset-tesi/100",
                "top_p": 0.95,
                "do_sample": True,
                "num_return_beams": 10,
                "split_dataset": "test",
                "output_dir": f"/root/mzizioli/planGPT-OGR/{domain}-generations-tesi/sampling/",
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