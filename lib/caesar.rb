require "pry"
class Caesar


  def initialize

  end


  def caesar_cipher(string, shift)
    array = Array.new
    array << string.chars

    array.map do |strings|
      strings.ord
    end

    while array != nil
      array.rotate!(shift)
    end

    array.chr
  end
end
