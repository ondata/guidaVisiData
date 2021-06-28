# Come salvare un insieme di operazioni e applicarle come modello ad altri file

## Introduzione

In **VisiData** è possibile salvare il [log delle operazione fatte](https://www.visidata.org/docs/save-restore/) e riutilizzarlo per applicarle nuovamente al file di input.

Se ad esempio a partire da [questo file `CSV`](risorse/input.csv) (sotto l'anteprima) si volessero cancellare tutte le righe che contengono il solo carattere `a` e infine salvare l'*output*, la procedura è:

- `vd input.csv`;
- posizionarsi nella prima colonna e pigiare `|` per attivare la selezione tramite espressione regolare, scrivere `^a$` e premere `INVIO`. Verrà fatta la selezione descritta;
- pigiare in sequenza `g` e `d` per cancellare le righe selezionate;
- poi `CTRL+s`;
- e infine scegliere un nome di output (ad esempio `output.csv`) e pigiare `INVIO` per salvare il file.

| field1 | field2 |
| --- | --- |
| a | 0 |
| b | 3 |
| a | 4 |
| c | 5 |

Per salvare la procedura di sopra in un file di log, bisognerà premere `CTRL+d`, scegliere un nome per salvare il file (ad esempio `cancella_le_a.vd`) e pigiare `INVIO`.

Il file di log salvato avrà un contenuto come quello sottostante ([è un file `TSV`](#nota-sul-file-di-log)), in cui sono "mappate" tutte le operazioni fatte:

```
sheet	col	row	longname	input	keystrokes	comment
global		null_value	set-option
			open-file	input.csv	o
input	field1		select-col-regex	^a$	|	select rows matching regex in current column
input			delete-selected		gd	delete (cut) selected rows and move them to clipboard
input			save-sheet	output.csv	^S	save current sheet to filename in format determined by extension (default .tsv)
```

Per riapplicare la stessa procedura al file, senza interagire con lo schermo, il comando da lanciare è:

```
vd -b -p cancella_le_a.vd
```

- `-b` per eseguire VisiData senza attivarne l'interfaccia;
- `-p` per replicare un file di log.

Se questo comando si lancia dopo avere già creato il file di *output*, si avrà un messaggio di errore, che avvisa che il file esiste già e non può essere sovrascritto.<br>
Per fare in modo che venga sovrascritto bisognerà aggiungere l'opzione `-y`:

```
vd -y -b -p cancella_le_a.vd
```

A schermo verrà restituito l'elenco delle operazione svolte:

```
opening cancella_le_a.vd as vd
"input.csv"
opening input.csv as csv
select rows matching regex in current column
"^a$"
search wrapped
2 matches for /^a$/
selected 2 rows
delete (cut) selected rows and move them to clipboard
copied 2 rows to clipboard
deleted 2 rows
save current sheet to filename in format determined by extension (default .tsv)
"output.csv"
saving 1 sheets to output.csv as csv
replay complete
```

## Applicare le stesse procedure a un file diverso, ma omologo

Spesso si ha la necessità di **applicare una stessa procedura ad altri file**, con la **stessa struttura**, ma con **contenuti differenti**.<br>
Per utilizzare il file di log creato con un file diverso da `input.csv`, bisognerà modificare il file di log (si modifica con qualsiasi editor di testo):

- rimuovere la riga con il riferimento a `input.csv`
- rimuovere il riferimento al nome del foglio (qui è `input`, come il nome del file).

Diventerà quindi:

```
sheet	col	row	longname	input	keystrokes	comment
global		null_value	set-option
	field1		select-col-regex	^a$	|	select rows matching regex in current column
			delete-selected		gd	delete (cut) selected rows and move them to clipboard
			save-sheet	output.csv	^S	save current sheet to filename in format determined by extension (default .tsv)
```

Fatto questo, il comando da usare con un nuovo file denominato ad esempio `input_nuovo.csv` sarà:

```
vd -y -b -p cancella_le_a.vd input_nuovo.csv
```

In output verrà creato il file `output.csv`.

Se si vuole creare un file di output con nome diverso, si deve cancellare dal file di log la riga in cui si fa riferimento a `output.csv` e lanciare il comando:

```
vd -y -b -p cancella_le_a.vd input_nuovo.csv -o output_nuovo.csv
```


## Nota sul file di log

Si tratta di un TSV, quindi è possibile leggerlo con un client dedicato. Quello di sopra ad esempio è:

| sheet | col | row | longname | input | keystrokes | comment |
| --- | --- | --- | --- | --- | --- | --- |
| global |  | null_value | set-option |  |  |  |
|  | field1 |  | select-col-regex | ^a$ | | | select rows matching regex in current column |
|  |  |  | delete-selected |  | gd | delete (cut) selected rows and move them to clipboard |
|  |  |  | save-sheet | output.csv | ^S | save current sheet to filename in format determined by extension (default .tsv) |
