### Description

Character conversion from Latin alphabet to Serbian Cyrillic script
and vice versa

It adds **downcase** method that understands Serbian Cyrillic case


### Install

```
$ gem install viljushka
```

### Usage

```
require 'viljushka'
```

For Cyrillic


```
puts 'ćirilica'.to_cyr
puts 'ćirilica'.po_vuku
``

and for Latin

``
puts 'латиница'.to_lat
puts 'латиница'.po_gaju
```

Also added **downcase**

```
puts 'ПАЗИ САД'.downcase
=> "пази сад"
```

### Note

The idea for this gem comes from Dalibor Nasevic, who originally
created it for Macedonian Cyrillic. I have since modified it by
adding **downcase** method
