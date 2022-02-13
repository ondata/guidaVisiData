---
title: 10 Modi di usare Visidata
hide: toc
---

# 10 Modi di usare Visidata

**Dieci esempi rapidi**, che mostrano cosa è possibile fare con VisiData. È una sezione a cura di [**Salvatore Fiandaca**](https://twitter.com/totofiandaca) (grazie), basata sul [lavoro di **Saul Pwanson**](https://www.visidata.org/blog/2020/ten/), l'autore di VisiData.


## 1. esplora i set di dati senza sforzo, indipendentemente dal formato

```
$ vd albums.json dropbox/*.xls* agents.sqlite
```

Utilizzare i tasti freccia (↑↓→←) per spostarsi e **`q`** per uscire.

**VisiData** carica i dati da [molte fonti e formati diversi](https://www.visidata.org/formats), incluso [tutto ciò che i _pandas_ possono caricare!](https://pandas.pydata.org/pandas-docs/stable/reference/io.html)

I nuovi caricatori sono inclusi in ogni versione e puoi [crearne uno tu stesso facilmente.](https://www.visidata.org/docs/loaders)


## 2. convertire da qualsiasi formato di input in qualsiasi formato di output

All'interno di **VisiData**, premere <kbd>CTRL+S</kbd> per salvare il file nel formato specificato dall'estensione.

Converti direttamente dalla riga di comando con:

```
$ vd -b input.csv -o output.json
```

## 3. come sostituto interattivo di grep, awk, sed, cut, sort, uniq

```
$ netstat -an | vd -f fixed -o used-ports.txt
```

Premi <kbd>CTRL+Q</kbd> per uscire da **VisiData** e salvare nel file di output specificato.

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

Salvare il _cmdlog_ in un file _.vd_ con `CTRL+D foo.vd`, quindi riprodurre il file _.vd_ salvato:

```
$ vd -b -p foo.vd
```

## 9. rinominare un mucchio di file

Avviare vd nella directory con i file
Modifica i nomi dei file ([documentazione sui comandi di modifica](https://www.visidata.org/docs/edit))
<kbd>CTRL+S</kbd> per eseguire il commit ([guarda questo video che mostra come utilizzare il browser di directory](https://www.youtube.com/watch?v=l2Bpmm0yAGw))

## 10. vedi tutte le opzioni e i comandi disponibili

Esistono molti altri modi per utilizzare **VisiData!** Per saperne di più, premi <kbd>CTRL+H</kbd> per vedere la [manpage](https://www.visidata.org/man) o <kbd>z CTRL+H</kbd> per vedere l'elenco completo dei comandi disponibili sul foglio corrente.


