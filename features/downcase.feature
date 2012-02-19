Feature: Convert from uppercase To lowercase
    In order to convert text from uppercase to lowercase

    Scenario Outline: User enters Latin characters
        When I provide a <Uppercase> character
        Then I should get it in <Lowercase>

        Examples:
            | Uppercase | Lowercase |
            | DJ        | dj        |
            | Dj        | dj        |
            | DŽ        | dž        |
            | LJ        | lj        |
            | Lj        | lj        |
            | Ć         | ć         |
            | Č         | č         |
            | Š         | š         |
            | А         | а         |
            | Б         | б         |
            | В         | в         |
            | Г         | г         |
            | Д         | д         |
            | Ђ         | ђ         |
            | Е         | е         |
            | Ж         | ж         |
            | З         | з         |
            | И         | и         |
            | Ј         | ј         |
            | К         | к         |
            | Л         | л         |
            | Љ         | љ         |
            | М         | м         |
            | Н         | н         |
            | Њ         | њ         |
            | О         | о         |
            | П         | п         |
            | Р         | р         |
            | С         | с         |
            | Т         | т         |
            | Ћ         | ћ         |
            | У         | у         |
            | Ф         | ф         |
            | Х         | х         |
            | Ц         | ц         |
            | Ч         | ч         |
            | Џ         | џ         |
            | Ш         | ш         |
