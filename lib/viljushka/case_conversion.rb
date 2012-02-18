# coding: utf-8
module Viljushka
  module CaseConversion

    Up = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z А Б В Г Д Ђ Е Ж З И Ј К Л Љ М Н Њ О П Р С Т Ћ У Ф Х Ц Ч Џ Ш)
    Low = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z а б в г д ђ е ж з и ј к л љ м н њ о п р с т ћ у ф х ц ч џ ш)

    def downcase_with_serbian_cyrillic
      Viljushka.convert(self.dup, Up, Low)
    end

    alias_method :downcase, :downcase_with_serbian_cyrillic

    def upcase_with_serbian_cyrillic
      Viljushka.convert(self.dup, Low, Up)
    end

    alias_method :upcase, :upcase_with_serbian_cyrillic

  end
end

class String
  remove_method(:downcase)
  remove_method(:upcase)
  include Viljushka::CaseConversion
end
