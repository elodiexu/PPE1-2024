#!/bin/bash
# Script pour établir le classement des lieux les plus cités
cd ~/ann
year=$1
month=$2
count=$3

if [[ $year == "*" ]]; then
    year=""
fi

if [[ $month == "*" ]]; then
    month=""
fi

grep 'Location' ${year}_${month}*.ann | cut -f3 | sort | uniq -c | sort -nr | head -n "$count"
