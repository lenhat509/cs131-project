#!/bin/bash

file_path='MiniProjectGroup5/cause_of_deaths_new.csv'

# column num for both  'Country/Territory' and 'Drug Use Disorders'
country_col=$(head -1 $file_path | tr ',' '\n' | nl -n ln | grep 'Country/Territory' | cut -f1)
drug_col=$(head -1 $file_path | tr ',' '\n' | nl -n ln | grep 'Drug Use Disorders' | cut -f1)

#  total drug-related deaths
awk -F, -v country_col=$country_col -v drug_col=$drug_col 'NR>1 {arr[$country_col]+=$drug_col} END {for (i in arr) print i, arr[i]}' $




