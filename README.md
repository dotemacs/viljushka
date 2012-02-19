### Description

Character conversion from Latin alphabet to Serbian Cyrillic script
and vice versa

It adds **downcase**, **upcase** & **capitalize** methods that
understand Serbian Cyrillic & Latin case


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
