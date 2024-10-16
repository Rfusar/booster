#!/bin/bash

# SCARICA I PACCHETTI CHE TI SERVONO
# Usa i parametri per i download

# Dichiarazione di un array di librerie
apt update
update upgrade

LIBS=("nvim" "go")  # Rimuovere le virgole per gli elementi dell'array

# Controlla se sono stati passati argomenti
if [ "$#" -eq 0 ]; then
    echo "Nessun pacchetto specificato. Utilizza i seguenti pacchetti di default:"
    echo "${LIBS[@]}"
    args=("${LIBS[@]}")  # Usa i pacchetti di default
else
    args=("$@")  # Usa gli argomenti passati dallo script
fi

# Itera attraverso i pacchetti da installare
for pkg in "${args[@]}"; do
    clear
    echo "Installando $pkg...\n"

    if pkg=="nvim"; then .\nvim.sh
    
    fi
done
