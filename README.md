# ASSO_Project_Test

Passi di configurazione:
1. Clone della repository
2. Entrare nella directory della repository
3. Eseguire comando "chmod +x ./download.sh"
4. Eseguire comando "./download.sh"
5. Entrare in directory Whole_Compose
6. Creare un file .env
7. Inserire almeno le chiavi TS_AUTH_KEY e TS_DOMAIN nel file .env
8. Eseguire comando "./compose-stack.py up-p --files ..."

ATTENZIONE: Il TS_DOMAIN, per adesso, deve essere impostato manualmente nei vari file di configurazione del progetto. Questo comporta la necessità di ricostruire le immagini


Il "--files" prende la parte nome del file compose chiamato nome.compose.yml. Ad esempio:   
"./compose-stack.py up-p --files kafka-1 kafka-2 kafka-3"   
e non:    
"./compose-stack.py up-p --files kafka-1.compose.yml kafka-2.compose.yml kafka-3.compose.yml"   
