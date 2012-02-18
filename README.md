### Description

Character conversion from Latin alphabet to Serbian Cyrillic script
and vice versa

It adds **downcase** & **downcase** methods that understand Serbian
Cyrillic case


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
```

### Note

The idea for this gem comes from Dalibor Nasevic, who originally
created it for Macedonian Cyrillic.
