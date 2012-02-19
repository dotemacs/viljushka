### Description

Character conversion to and from and String operations for Latin
alphabet and Serbian Cyrillic script.

Methods **#downcase**, **#upcase** & **#capitalize** are Serbian
Cyrillic & Latin case compatible as well as maintaining their previous
functionality on A-Z ASCII character set.

### Install

```
$ gem install viljushka
```

### Usage

```
require 'viljushka'

> "sarma".upcase.po_vuku # or .to_cyr
"САРМА"
> "САРМА".downcase.po_gaju # or .to_lat
"sarma"
> "жирафа".capitalize
"Жирафа"
```

### Note

The idea for this gem comes from Dalibor Nasevic, who originally
created it for Macedonian Cyrillic.
