#!/bin/bash

set -x

folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# data for append example #

# create 20 rows data
mlr --csv sample -k 20 "$folder"/parco_circolante_Abruzzo.csv >"$folder"/inputFileOne.csv
mlr --csv sample -k 20 "$folder"/parco_circolante_Abruzzo.csv >"$folder"/inputFileTwo.csv
