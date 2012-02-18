# coding: utf-8
module Viljushka
  module Boc

    Latin    = %w(DJ Dj dj DŽ Dž dž LJ Lj lj NJ Nj nj A a B b V v G g D d Đ đ Ð ð E e Ž ž Z z I i J j K k L l M m N n O o P p R r S s T t Ć ć U u F f H h C c Č č Š š)
    Cyrillic = %w(Ђ Ђ ђ Џ Џ џ Љ Љ љ Њ Њ њ А а Б б В в Г г Д д Ђ ђ Ђ ђ Е е Ж ж З з И и Ј ј К к Л л М м Н н О о П п Р р С с Т т Ћ ћ У у Ф ф Х х Ц ц Ч ч Ш ш)

    def to_cyr
      Viljushka.convert(self.dup, Latin, Cyrillic)
    end
    alias_method :po_vuku, :to_cyr

    def to_cyr!
      Viljushka.convert(self, Latin, Cyrillic)
    end
    alias_method :po_vuku!, :to_cyr!

    def to_lat
      Viljushka.convert(self.dup, Cyrillic, Latin)
    end
    alias_method :po_gaju, :to_lat

    def to_lat!
      Viljushka.convert(self, Cyrillic, Latin)
    end
    alias_method :po_gaju!, :to_lat!

  end
end

# Add to_cyr method to all Strings
class String
  include Viljushka::Boc
end
