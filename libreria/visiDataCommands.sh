#!/bin/bash

set -x
set -e
set -u
set -o pipefail

folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# rimuovo una riga perché c'è un carattere speciale. Segnalare la cosa
mlr --c2j put '$lang="en"' then filter -x -S '$longname=="addcol-subst"' "$folder"/visiDataCommands_en.csv >"$folder"/visiDataCommands_en.json

# il file principale è da compilare a mano
if [ ! -f "$folder"/visiDataCommands_it.yml ]; then
  mlr --json put -S '$description_it="";$lang="it";$section=""' then reorder -f longname "$folder"/visiDataCommands_en.json | jq -cs . | yq -y . >"$folder"/visiDataCommands_it.yml
fi

# converti yaml in csv
yq <"$folder"/visiDataCommands_it.yml -c '.[]' | mlr --j2c cat >"$folder"/tmp_visiDataCommands_it.csv

# aggiungi nomi sezione in italiano
mlr --csv join --ul -j section -f tmp_visiDataCommands_it.csv then unsparsify "$folder"/visiDataCommands_section.csv >"$folder"/visiDataCommands_it.csv

if [ -f "$folder"/tmp.md ]; then
  rm -f "$folder"/tmp.md
fi

cat << EOF > "$folder"/tmp.md
---
title: Comandi
---

EOF

mlr <"$folder"/visiDataCommands_it.csv --c2j filter -x -S '$description_it=="" && $section_it==""' then cut -f section_it then uniq -a | jq -r ".section_it" | while read -r sezione; do
  #mlr --csv filter -S '$section_it=="'"$sezione"'"' "$folder"/visiDataCommands_it.csv

  # aggiungi titolo sezione
  echo -e "## $sezione\n" >>"$folder"/tmp.md

  # aggiungi comando a ogni sezione
  mlr --c2j filter -S '$description_it=~".*" && $section_it=="'"$sezione"'"' "$folder"/visiDataCommands_it.csv | while read line; do
    description_it=$(echo "$line" | yq -r .description_it)
    sheet=$(echo "$line" | yq -r .sheet)
    keystrokes=$(echo "$line" | yq -r .keystrokes)
    section_it=$(echo "$line" | yq -r .section_it)
    echo -e "\`$keystrokes\`": "$description_it\n" >>"$folder"/tmp.md
  done
done

mv "$folder"/tmp.md "$folder"/../docs/comandi.md
