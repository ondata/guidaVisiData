---
title: Formati
---

# Formati

|filetype            |format              |VisiData\_loader |VisiData saver  |version\_added |created  |creator             |PyPI dependencies   |
|--------------------|--------------------|-----------------|----------------|---------------|---------|--------------------|--------------------|
|[csv](https://www.visidata.org/docs/formats/#csv)    |Comma\-Separated Values|0\.28            |displayed text  |0\.28          |1972     |                    |                    |
|[json](https://www.visidata.org/docs/formats/#json)  |Javascript Object Notation \(JSON\)|0\.28            |typed           |0\.28          |2001     |Douglas Crockford   |                    |
|[tsv](https://www.visidata.org/docs/formats/#tsv)    |Tab\-Separated Values|0\.28            |displayed text  |0\.28          |         |                    |                    |
|xlsx                |Excel spreadsheets  |0\.28            |                |0\.28          |1987     |Microsoft           |openpyxl            |
|zip                 |ZIP archive format  |0\.28            |                |0\.28          |1989     |PKWARE              |                    |
|hdf5                |Hierarchical Data Format|0\.28            |                |0\.28          |199x     |NCSA                |h5py                |
|[sqlite](https://www.visidata.org/docs/formats/#sqlite)|sqlite              |0\.42            |                |0\.42          |2000     |D\. Richard Hipp    |                    |
|xls                 |Excel spreadsheets  |0\.42            |                |0\.42          |1987     |Microsoft           |xlrd                |
|[fixed](https://www.visidata.org/docs/formats/#fixed)|fixed width text    |0\.97            |                |0\.97          |         |                    |                    |
|[postgres](https://www.visidata.org/docs/formats/#postgres)|PostgreSQL database |0\.97            |                |0\.97          |1996     |                    |                    |
|[vd](https://www.visidata.org/docs/formats/#vd)      |VisiData command log|0\.97            |                |0\.97          |2017     |VisiData            |                    |
|vds           |              |VisiData Sheet      |2\.2             |yes                 |2021     |VisiData            |                    |                    |
|[mbtiles](https://www.visidata.org/docs/formats/#mbtiles)|MapBox Tileset      |0\.98            |                |0\.98          |2011     |MapBox              |mapbox\-vector\-tile|
|pbf                 |Protocolbuffer Binary Format|0\.98            |                |0\.98          |2011     |OpenStreetMap       |                    |
|[shp](https://www.visidata.org/docs/formats/#shp)    |Shapefile geographic data|0\.98            |                |0\.98          |1993     |ESRI                |pyshp               |
|[html](https://www.visidata.org/docs/formats/#html)  |HTML tables         |0\.99            |displayed text  |0\.99          |1996     |Dave Raggett        |lxml                |
|md                  |markdown table      |                 |displayed text  |1\.1           |2008     |                    |                    |
|[png](https://www.visidata.org/docs/formats/#png)    |Portable Network Graphics \(PNG\) image|1\.1             |from png        |1\.1           |1996     |PNG Development Group|pypng               |
|[ttf](https://www.visidata.org/docs/formats/#ttf)    |TrueType Font       |1\.1             |                |1\.1           |1991     |Apple               |fonttools           |
|[dot](https://www.visidata.org/docs/formats/#pcap)   |Graphviz diagram    |                 |from pcap       |1\.2           |1991     |                    |                    |
|dta                 |Stata               |1\.2             |                |1\.2           |1985     |StataCorp           |pandas              |
|[geojson](https://www.visidata.org/docs/formats/#shp)       |Geographic JSON     |2\.2             |yes \(from shp and geojson\)|2008     |                    |http://geojson\.org/|                    |
|sas7bdat            |Statistical Analysis System \(SAS\)|1\.2             |                |1\.2           |1976     |SAS Institute       |sas7bdat            |
|sav                 |SPSS statistics     |1\.2             |                |1\.2           |1968     |SPSS Inc            |                    |
|spss                |SPSS statistics     |1\.2             |                |1\.2           |1968     |SPSS Inc            |savReaderWriter     |
|xpt                 |Statistical Analysis System \(SAS\)|1\.2             |                |1\.2           |1976     |SAS Institute       |xport               |
|[jsonl](https://www.visidata.org/docs/formats/#json) |JSON Lines          |1\.3             |typed           |1\.3           |2013     |Ian Ward            |                    |
|[pandas](https://www.visidata.org/docs/formats/#pandas)|all formats supported by pandas library|1\.3             |                |1\.3           |2008     |Wes McKinney        |pandas              |
|[pcap](https://www.visidata.org/docs/formats/#pcap)  |network packet capture|1\.3             |                |1\.3           |1988     |LBNL                |dpkt dnslib         |
|pyprof              |Python Profile data |1\.3             |                |1\.3           |         |                    |                    |
|[xml](https://www.visidata.org/docs/formats/#xml)    |eXtensible Markup Language \(XML\)|1\.3             |from xml        |1\.3           |1998     |W3C                 |lxml                |
|yaml                |YAML Ain't Markup Language \(YAML\)|1\.3             |                |1\.3           |2001     |Clark Evans         |PyYAML              |
|frictionless        |Frictionless Data   |2\.0             |                |2\.0           |         |OpenKnowledge Institute|datapackage         |
|jira                |JIRA/Confluence table markup|                 |displayed text  |2\.0           |         |Atlassian           |                    |
|npy                 |NumPy array format  |2\.0             |typed           |2\.0           |         |                    |numpy               |
|tar                 |Unix Tape Archive   |2\.0             |                |2\.0           |         |                    |                    |
|usv                 |Unicode\-Separated Value|2\.0             |displayed text  |2\.0           |1993     |Unicode             |                    |
|xlsb                |Excel binary format |2\.0             |                |2\.0           |         |Microsoft           |xlrd                |
|[mysql](https://www.visidata.org/docs/formats/#mysql)     |MySQL               |2\.0             |                | |1995     |MySQL AB            |https://github\.com/mysql/mysql\-server|MySQLdb             |
|pdf           |Portable Document Format|2\.0             |                |    |1993     |Adobe               |https://en\.wikipedia\.org/wiki/PDF|pdfminer\.six       |
|vcf           |Virtual Contact File \(vCard\)|2\.0             |                |  |1995     |Versit Consortium   |https://tools\.ietf\.org/html/rfc6350|                    |
|rec           |recutils database file|2\.0             |displayed text  |  |2010     |Jose E\. Marchesi   |https://www\.gnu\.org/software/recutils/|                    |
|eml           |Multipurpose Internet Mail Extensions \(MIME\)|2\.0             |                |  |1996     |Nathaniel Borenstein and Ned Freed|https://tools\.ietf\.org/html/rfc2045|                    |


