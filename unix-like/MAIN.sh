#!/bin/bash

# SCARICA I PACCHETTI CHE TI SERVONO
# Usa i parametri per i download

# Aggiorna e aggiorna i pacchetti del sistema

# Dichiarazione di un array di librerie
LIBS=("nvim" "go")

# Controlla se sono stati passati argomenti
if [ "$#" -eq 0 ]; then
    echo "Nessun pacchetto specificato. Solo aggiornamento eseguito."
    exit 0  # Esci dallo script senza eseguire ulteriori azioni
fi


# Se ci sono argomenti, usa quelli passati allo script
args=("$@")
apt update && apt upgrade
apt install \
    libssl-dev \
    net-tools

# Itera attraverso i pacchetti da installare
for pkg in "${args[@]}"; do
    clear
    echo "Installando $pkg..."

    elif [ "$pkg" == "go" ]; then 
        . ./golang.sh

    elif [ "$pkg" == "nvim" ]; then 
        . ./nvim.sh
        cd /root/.config/nvim
        return

    else 
        echo "Pacchetto $pkg non supportato."
    fi
    cd /home
done
