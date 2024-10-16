#!/bin/bash

# SCARICA I PACCHETTI CHE TI SERVONO
# Usa i parametri per i download

# Aggiorna e aggiorna i pacchetti del sistema
apt update && apt upgrade -y

# Dichiarazione di un array di librerie
LIBS=("nvim" "go")

# Controlla se sono stati passati argomenti
if [ "$#" -eq 0 ]; then
    echo "Nessun pacchetto specificato. Utilizza i seguenti pacchetti di default:"
    echo "${LIBS[@]}"
    args=("${LIBS[@]}")  # Usa i pacchetti di default
else
    args=("$@")  # Usa gli argomenti passati allo script
fi

# Itera attraverso i pacchetti da installare
for pkg in "${args[@]}"; do
    clear
    echo "Installando $pkg..."

    # Verifica quale pacchetto installare e chiama lo script corrispondente
    if [ "$pkg" == "nvim" ]; then ./nvim.sh
    elif [ "$pkg" == "go" ]; then ./golang.sh
    
    else echo "Pacchetto $pkg non supportato."
    fi
    
done
