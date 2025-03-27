# PlanGPT
Tesi Zizioli Marco

Per ogni dominio:
  - doamin-code: cartella che contiene i file per la generazione dei piani, i file per calcolare i risultati e i file che contengono i paini generati
    - greedy o sampling: in base alla strategia di generazione token utilizzata
      - code-for-generation: file per generazione piani ( PS. Per effettuare la generazione dei piani servono i modelli addestrati di PlanGPT )
      - code-for-risults: file per calolo dei risultati atraverso le metriche e analisi delle soluzioni
      - generated-plans: divisi per approccio online e offline
  - doamin-dataset-tesi: cartella che contiene i 100 problemi di pianificazione utilizzati

Risultati metriche + analisi delle solzuioni riportati in "risultati_greedy" e "risultati_sampling"

Nella cartella "total_dataset" sono presenti i problemi di pianificazione estratti dai seguenti dataset:
  - https://github.com/pucrs-automated-planning/goal-plan-recognition-dataset
  - https://github.com/mattia93/GRNet/tree/main/testsets/TS_PerGen

Nel file "Creazione_dataset.ipynb" è riportato il codice usato per estrarre i problemi dal file "total_dataset.zip", con lo scopo di creare i dataset che sono andato a utilizare.
