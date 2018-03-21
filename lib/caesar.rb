require 'pry'
class Caesar
  attr_reader  :dictionary, :number

  def initialize
    @dictionary = ('a'..'z').to_a
    @number = -3
  end

  def rotate
    dictionary.rotate(number)
  end

  def zipped_array
    dictionary.zip(rotate)
  end

  def turn_into_hash
    zipped_array.to_h
  end

  def eng_to_cipher(sentence , number)
    @number = -number
    sentence.split("").map do|letter|
      turn_into_hash[letter]
    end.join
  end


end
