require 'pry'
class Caesar

  attr_reader :alphabet,
              :cipher

  def caesar_cipher(shift, alphabet = ('a'..'z').to_a.join)
    @alphabet = alphabet('a'..'z')
    @cipher = alphabet.chars.rotate(shift).join
  end
end

binding.pry
