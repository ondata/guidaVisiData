---
title: Configurazione
---

# Configurazione

In VisiData è possibile utilizzare un file di configurazione, per personalizzare alcune caratteristiche: i colori dell'applicazione, le funzioni disponibili, l'interfaccia, ecc..

Questo file di *default* si chiama `.visidatarc` e VisiData lo cerca nella cartella *home* dell'utente, quindi `~/.visidatarc`. Se non è presente, è da creare e da riempire con le istruzioni di configurazione che si desiderano.

## Esempi.

### Attivare contatore di righe e colonne

È molto comodo, ma non è disponibile *by default*, poter aver nell'interfaccia di VisiData un'indicazione con (vedi figura sotto):

1. riga corrente;
2. righe totali;
3. numero di righe selezionate;
4. colonna corrente;
5. colonne totali.

![](./imgs/contatoreRigheColonne_02.png)

Per attivare la cosa bisogna aprire il file di configurazione di VisiData e aggiungere il seguente codice:

```python
@Sheet.property
def cursorRowIndex1(sheet):
    return sheet.cursorRowIndex+1
@Sheet.property
def cursorVisibleColIndex1(sheet):
    return sheet.cursorVisibleColIndex+1

Sheet.class_options.disp_rstatus_fmt = ' R:{sheet.cursorRowIndex1}/{sheet.nRows}[{sheet.nSelectedRows}] C:{sheet.cursorVisibleColIndex1}/{sheet.nVisibleCols} {sheet.rowtype} '
```

### Modificare i colori: l'esempio della barra di stato

Questi i passi da seguire:

- aprire in modifica il file di configurazione;
- aggiungere l'opzione relativa che si vuole cambiare, con questa sintassi `options.color_status = 'bold black on 255'`;
- salvare il file di configurazione.

### Attivare il comando `clean-names`

I nomi dei campi dei file, per essere utilizzati in VisiData all'interno di espressioni Python non devono contenere spazi.

Per avere disponibile un comando per "pulire" e normalizzare questi nomi, si può aggiungere questo codice al file di configurazione:

```python
Sheet.addCommand('', 'clean-names', '''
options.clean_names = True;
for c in visibleCols:
    c.name = c.name
''')
```

Una volta aggiunto, per usarlo in VisiData:

- fare click sulla <kbd>barra spaziatrice</kbd> ;
- digitare `clean-names` e premere <kbd>INVIO</kbd> .
### Importare un modulo Python

È possibile importare in VisiData uno o più moduli Python, in modo che sia disponibili ulteriori funzionalità.<br>
Per farlo c'è da aggiungere nel file di configurazione la "classica" stringa di *import*.

Ad esempio per abilitare il modulo `re` (quello sulle espressioni regolari), basterà aggiungere:

```
import re
```

E con questo modulo attivato, si potranno applicare :notepad_spiral: [filtri, basati su espressioni regolari](lavorareRighe.md#filtri-tramite-espressione-python-basata-su-piu-colonne).

### Aggiungere separatore delle migliaia

Quando si apre una tabella in formato `CSV`, tutte le colonne vengono interpretate come testo.<br>
L'utente potrà poi definire quelle numeriche come colonna con numeri interi o decimali. Ma i separatori delle migliaia di *default* non sono presenti e non è facile quindi capire sempre se siamo ad esempio nell'ordine dei milioni o miliardi.

Allora è comodo modificare il file `~/.visidatarc` e aggiungere questi parametri:

```python
# impostazione per i campi float
options.disp_float_fmt = '{:,.02f}'
# impostazione per i campi interi
options.disp_int_fmt = '{:,}'
```

In questo modo `10537428.32` sarà visualizzato come `10,537,428.32` e `1530142` come `1,530,142`.

## Un file di configurazione di esempio

```python
# Python modules to import

import re

# to set the value to use for null value cells
options.null_value = ""
#options.disp_float_fmt = '%.07f'

# to have rows and columns info bottom right
@Sheet.property
def cursorRowIndex1(sheet):
    return sheet.cursorRowIndex+1
@Sheet.property
def cursorVisibleColIndex1(sheet):
    return sheet.cursorVisibleColIndex+1

Sheet.class_options.disp_rstatus_fmt = ' R:{sheet.cursorRowIndex1}/{sheet.nRows}[{sheet.nSelectedRows}] C:{sheet.cursorVisibleColIndex1}/{sheet.nVisibleCols} {sheet.rowtype} '

# to have the function that write today date
today = datetime.datetime.today()

# to set the color of the status bar
options.color_status = 'bold black on 255'

# to add a command to clean field names, not usable in python expressions
Sheet.addCommand('', 'clean-names', '''
options.clean_names = True;
for c in visibleCols:
    c.name = c.name
''')

# add a function to apply natural sorting to cell values
# https://github.com/ondata/guidaVisiData/discussions/51

_nsre = re.compile('([0-9]+)')
def natural_sort_key(s):
    return [int(text) if text.isdigit() else text.lower()
        for text in re.split(_nsre, s)]

def natsort(value, delimiter=','):
    list1 = value.split(delimiter)
```
