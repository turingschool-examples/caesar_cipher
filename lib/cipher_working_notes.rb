#scratch paper for working out Cipher class/method
#didn't get very far (sad face)

class Cipher
  attr_accessor :characters, :string, :alphabet
  def initialize
    @characters = characters
    @string = string
    @alphabet = alphabet
  end

  def encrypt
  string = "test"
  alphabet = ('a'..'z').to_a
  characters = string.chars

    characters.map do |letter|
      while alphabet.include? == letter
        print alphabet.with_index.rotate(3)
      end
    end
  end
end
