Feature: Convert from uppercase To lowercase
    In order to convert text from uppercase to lowercase

    Scenario Outline: User enters Latin characters
        When I provide a <Lowercase> character
        Then I should get it converted in <Uppercase>

        Examples:
            | Lowercase | Uppercase |
            | а         | А         |
            | б         | Б         |
            | в         | В         |
            | г         | Г         |
            | д         | Д         |
            | ђ         | Ђ         |
            | е         | Е         |
            | ж         | Ж         |
            | з         | З         |
            | и         | И         |
            | ј         | Ј         |
            | к         | К         |
            | л         | Л         |
            | љ         | Љ         |
            | м         | М         |
            | н         | Н         |
            | њ         | Њ         |
            | о         | О         |
            | п         | П         |
            | р         | Р         |
            | с         | С         |
            | т         | Т         |
            | ћ         | Ћ         |
            | у         | У         |
            | ф         | Ф         |
            | х         | Х         |
            | ц         | Ц         |
            | ч         | Ч         |
            | џ         | Џ         |
            | ш         | Ш         |
