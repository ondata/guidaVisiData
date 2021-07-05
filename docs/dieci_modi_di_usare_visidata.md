![](https://pigrecoinfinito.files.wordpress.com/2019/07/vdlogo.png)

<br>

**NOTA BENE**: Questa pagina si deve a [**Salvatore Fiandaca**](https://twitter.com/totofiandaca), che ha tradotto in italiano [10 Ways to Use VisiData](https://www.visidata.org/blog/2020/ten/). Grazie.

[`torna alla guida`](./README.md)


# 10 Modi di usare Visidata

## 1. esplora i set di dati senza sforzo, indipendentemente dal formato

```
$ vd albums.json dropbox/*.xls* agents.sqlite
```

Utilizzare i tasti freccia (↑↓→←) per spostarsi e **`q`** per uscire.

**VisiData** carica i dati da [molte fonti e formati diversi](https://www.visidata.org/formats), incluso [tutto ciò che i _pandas_ possono caricare!](https://pandas.pydata.org/pandas-docs/stable/reference/io.html)

I nuovi caricatori sono inclusi in ogni versione e puoi [crearne uno tu stesso facilmente.](https://www.visidata.org/docs/loaders)


## 2. convertire da qualsiasi formato di input in qualsiasi formato di output

All'interno di **VisiData**, premere <kbd>Ctrl+S</kbd> per salvare il file nel formato specificato dall'estensione.

Converti direttamente dalla riga di comando con:

```
$ vd -b input.csv -o output.json
```

## 3. come sostituto interattivo di grep, awk, sed, cut, sort, uniq

```
$ netstat -an | vd -f fixed -o used-ports.txt
```

Premi <kbd>Ctrl+Q</kbd> per uscire da **VisiData** e salvare nel file di output specificato.

## 4. grattare i dati della tabella HTML da una pagina Web:

```
$ vd https://en.wikipedia.org/wiki/List_of_largest_cities
```

## 5. vedere una differenza visiva di due fogli con la stessa struttura

```
$ vd --diff foo1.csv foo2.csv
```

## 6. esplora un oggetto dal Python REPL

```
>>> visidata.view(obj)
```

## 7. esplora tutti i pandas DataFrame

```
>>> visidata.view_pandas(df)
```

## 8. creare una pipeline di dati ad hoc

**VisiData** può anche essere utilizzato in modalità batch con [script](https://www.visidata.org/docs/save-restore/) senza richiedere alcuna interazione.

Salvare il _cmdlog_ in un file _.vd_ con `Ctrl+D foo.vd`, quindi riprodurre il file _.vd_ salvato:

```
$ vd -b -p foo.vd
```

## 9. rinominare un mucchio di file

Avviare vd nella directory con i file
Modifica i nomi dei file ([documentazione sui comandi di modifica](https://www.visidata.org/docs/edit))
<kbd>Ctrl+S</kbd> per eseguire il commit ([guarda questo video che mostra come utilizzare il browser di directory](https://www.youtube.com/watch?v=l2Bpmm0yAGw))

## 10. vedi tutte le opzioni e i comandi disponibili

Esistono molti altri modi per utilizzare **VisiData!** Per saperne di più, premi <kbd>Ctrl H</kbd> per vedere la [manpage](https://www.visidata.org/man) o <kbd>z Ctrl+H</kbd> per vedere l'elenco completo dei comandi disponibili sul foglio corrente.

[`torna alla guida`](./README.md)

**[scritto da Saul Pwanson 2020-05-01]**

---
**VisiData** © 2017-2020 [Saul Pwanson](https://www.saul.pw/) | Licensed under [GPLv3](https://github.com/saulpw/visidata/blob/stable/LICENSE.gpl3) | [Privacy Policy](https://www.visidata.org/privacy)
