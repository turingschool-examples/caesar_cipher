require 'pry'

class Caesar

  attr_reader :caesar
              :eng_to_cipher

 def initialize
  end

  def eng_to_cipher_lowercase(string, shift = 3)
    alphabet = Array('a'..'z')
    decrypt = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map do |letter|
      decrypt.fetch(letter, " ")
    end
  end

  def eng_to_cipher_all_case(string, shift = 3)
    alphabet = Array('A'..'z')
    decrypt = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map do |letter|
      decrypt.fetch(letter, " ")
    end
  end

  def eng_to_cipher_from_file(shift = 3)
    alphabet = Array('A'..'z')
    decrypt = Hash[alphabet.zip(alphabet.rotate(shift))]
    binding.pry
    File.open("input.txt").chars.each do |letter|
      decrypt.fetch(letter, " ")
    end
  end
end

caesar = Caesar.new#("Gaius Julius Caesar")
p caesar.eng_to_cipher_lowercase("the quick brown fox jumps over the lazy dog").join
p caesar.eng_to_cipher_all_case("The quick brown fox JUMPS over the lazy DOG").join

#I couldn't make this work; didn't get to it fast enough.
#p eng_to_cipher_from_file.join
