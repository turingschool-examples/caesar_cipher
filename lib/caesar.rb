require 'pry'
class Caesar
  attr_reader  :dictionary

  def initialize
    @dictionary = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    @number = -3
  end

  def rotate
    new_characters = dictionary.rotate(-3)
  end

  def zipped_array
    dictionary.zip(rotate)
  end

  def turn_into_hash
    zipped_array.to_h
  end


  def encrypt(message, number)
    @number = (-number)
    message = message.split("")
    message.map do |letter|
      turn_into_hash[letter]
    end.join
  end

  def invert_array
    turn_into_hash.invert
  end

  def decrypt(message)
    message = message.split("")
    message.map do |letter|
      invert_array[letter]
    end.join
  end







end
