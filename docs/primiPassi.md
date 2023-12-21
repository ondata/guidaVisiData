---
title: Primi passi
---

# Primi passi

**VisiData** si utilizza dalla `shell`, quindi il primo passo è aprirla.

!!! info "File di esempio"

    In questa guida, alle volte si fa riferimento a dei file per sviluppare degli esempi. Questi si trovano nel repo di progetto in [questa cartella](https://github.com/ondata/guidaVisiData/tree/master/docs/dati).

## Aprire un file

Il comando di base è:

```bash
vd nomeFile
```

Se il file di input è ad esempio questo CSV

```
id,Variable,Value
1,size,55
1,material,wood
2,size,100
2,material,iron
2,shape,round
```

nella `shell` saranno visualizzati i relativi dati contenuti in esso

![](imgs/primiPassi_01.png)

!!! attention "Nota"

    Se il file non è un "vero CSV" e utilizza altri separatori di campo (come il punto e virgola `;`) è possibile aprire il file aggiungendo il flag `--csv-delimiter` e specificando il delimitatore tra doppie virgolette. Di seguito un esempio:

    ```bash
    vd --csv-delimiter ";" nomeFile.csv
    ```

### Tramite URL

È possibile aprire un file anche a partire dal suo URL pubblico. Ad esempio:

```bash
vd "https://raw.githubusercontent.com/ondata/guidaVisiData/master/docs/dati/inputFileOne.csv"
```

## Formati file

VisiData supporta [decine di formati](formati.md) di file: tra questi `TSV`,`CSV`,`sqlite`,`JSON`,`XML`,`XLSX`,`html`, ecc.. Il suo **formato** di ***default*** è il **TSV**.

!!! attention "Nota bene"

    Se il file non ha estensione - ad esempio si chiama `input` - e lo apri con `vd input`, VisiData lo interpreterà come un TSV.


L'interpretazione del formato viene fatta in due modi:

- se il file ha l'estensione, viene ricavato da questa;
- oppure si può forzare il formato con un'opzione in apertura. Se si vuole ad esempio che il file sia interpretato come un JSON, il comando sarà `vd -f json input`.
