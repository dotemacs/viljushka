# coding: utf-8
module Viljushka
  module Boc

    Latin    = %w(DJ Dj dj DŽ Dž dž LJ Lj lj NJ Nj nj A a B b V v G g D d Đ đ E e Ž ž Z z I i J j K k L l M m N n O o P p R r S s T t Ć ć U u F f H h C c Č č Š š)
    Cyrillic = %w(Ђ Ђ ђ Џ Џ џ Љ Љ љ Њ Њ њ А а Б б В в Г г Д д Ђ ђ Е е Ж ж З з И и Ј ј К к Л л М м Н н О о П п Р р С с Т т Ћ ћ У у Ф ф Х х Ц ц Ч ч Ш ш)

    Up  = %w(Dž Ž Ć Č Š Đ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z А Б В Г Д Ђ Е Ж З И Ј К Л М Н Љ Њ О П Р С Т Ћ У Ф Х Ц Ч Џ Ш)
    Low = %w(dž ž ć č š đ a b c d e f g h i j k l m n o p q r s t u v w x y z а б в г д ђ е ж з и ј к л м н љ њ о п р с т ћ у ф х ц ч џ ш)

    def to_cyr
      convert(self.dup, Latin, Cyrillic)
    end

    alias_method :po_vuku, :to_cyr

    def to_cyr!
      convert(self, Latin, Cyrillic)
    end

    alias_method :po_vuku!, :to_cyr!

    def to_lat
      convert(self.dup, Cyrillic, Latin)
    end

    alias_method :po_gaju, :to_lat

    def to_lat!
      convert(self, Cyrillic, Latin)
    end

    alias_method :po_gaju!, :to_lat!

    def downcase
      convert(self.dup, Up, Low)
    end

    def downcase!
      convert(self, Up, Low)
    end

    def upcase
      convert(self.dup, Low, Up)
    end

    def upcase!
      convert(self, Low, Up)
    end

    def capitalize
      arr = self.scan(/./)
      convert(arr.shift, Low, Up) + convert(arr.join, Up, Low)
    end

    private

    def convert(text, from, to)
      from.each_with_index do |char, i|
        text.gsub!(char, to[i])
      end
      text
    end

  end
end


class String
  remove_method(:downcase)
  remove_method(:downcase!)
  remove_method(:upcase)
  remove_method(:upcase!)
  remove_method(:capitalize)
  include Viljushka::Boc
end
