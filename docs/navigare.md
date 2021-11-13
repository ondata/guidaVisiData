---
title: Navigare tra i dati
hide: toc
---

# Navigare tra i dati

Per muoversi tra le celle si usano le 4 frecce direzionali dalla tastiera o (come vim, da cui nell'uso da tastiera VisiData prende molta ispirazione) `h`,`j`,`k`,`l`.

Per muoversi in modo più esteso:

- `g + freccia in basso` oppure `gj`, per andare all'ultima riga;
- `g + freccia in alto` oppure `gk`, per andare alla prima riga;
- `g + freccia a sinistra` oppure `gh`, per andare alla colonna più a sinistra;
- `g + freccia a destra` oppure `gl`, per andare alla colonna più a destra;
- `PageDown` oppure `Control + Shift + f`, una pagina in giù;
- `PageUp` oppure `Control + Shift + b`, una pagina in alto.

!!! attention "Nota bene"

    <kbd>g</kbd> è il tasto per i comandi "globali".

Per muoversi tramite ricerca testuale, sfruttando le espressioni regolari:

- `/ + regex`, cerca in avanti nella colonna corrente;
- `? + regex`, cerca indietro nella colonna corrente;
- `g/ + regex`,	cerca in avanti in tutte le colonne;
- `g? + regex`,	cerca indietro in tutte le colonne;

Con `n` e `N` si va avanti e indietro rispetto agli elementi di _output_ del risultato della ricerca.

Infine per saltare a una determinata riga o colonna, rispettivamente `zr` e `zc` seguito dal numero di riga e colonna (la numerazione inizia da zero).

