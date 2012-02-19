# coding: utf-8
module Viljushka
  module Boc

    Latin    = %w(DJ Dj dj DŽ Dž dž LJ Lj lj NJ Nj nj A a B b V v G g D d Đ đ Ð ð E e Ž ž Z z I i J j K k L l M m N n O o P p R r S s T t Ć ć U u F f H h C c Č č Š š)
    Cyrillic = %w(Ђ Ђ ђ Џ Џ џ Љ Љ љ Њ Њ њ А а Б б В в Г г Д д Ђ ђ Ђ ђ Е е Ж ж З з И и Ј ј К к Л л М м Н н О о П п Р р С с Т т Ћ ћ У у Ф ф Х х Ц ц Ч ч Ш ш)

    Up  = %w(Dž Ž Ć Č Š A B C D E F G H I J K L M N O P Q R S T U V W X Y Z А Б В Г Д Ђ Е Ж З И Ј К Л М Н Љ Њ О П Р С Т Ћ У Ф Х Ц Ч Џ Ш)
    Low = %w(dž ž ć č š a b c d e f g h i j k l m n o p q r s t u v w x y z а б в г д ђ е ж з и ј к л м н љ њ о п р с т ћ у ф х ц ч џ ш)

    def method_missing(arg)
      if arg.to_s =~ /(to_cyr|po_vuku)/
        convert(self.dup, Latin, Cyrillic)
      elsif arg.to_s =~ /(to_lat|po_gaju)/
        convert(self.dup, Cyrillic, Latin)
      elsif arg.to_s =~ /downcase/
        convert(self.dup, Up, Low)
      elsif arg.to_s =~ /upcase/
        convert(self.dup, Low, Up)
      elsif arg.to_s =~ /capitalize/
        arr = self.scan(/./)
        convert(arr.shift, Low, Up) + convert(arr.join, Up, Low)
      else
        super
      end
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
  remove_method(:upcase)
  remove_method(:capitalize)
  include Viljushka::Boc
end
