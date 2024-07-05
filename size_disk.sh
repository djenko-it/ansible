#!/bin/bash

# Fonction pour afficher la taille des disques
function afficher_taille_disques() {
    echo "Taille des disques :"
    lsblk -o NAME,SIZE | awk 'NR>1 {print $1 " : " $2}'
}

# Appel de la fonction
afficher_taille_disques
