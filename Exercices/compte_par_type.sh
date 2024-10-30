#!/bin/bash
# Script pour compter les entités d'un type donné pour une année
cd ~/ann
year=$1
entity=$2

count=$(grep "$entity" ${year}*.ann | wc -l)
echo "Nombre d'entités '$entity' pour l'année $year : $count"
