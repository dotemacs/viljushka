require 'viljushka/boc'
require 'viljushka/case_conversion'

module Viljushka

  private

  def self.convert(text, from, to)
    from.each_with_index do |char, i|
      text.gsub!(char, to[i])
    end
    text
  end
end
