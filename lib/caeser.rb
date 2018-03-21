require 'pry'
class Caeser

  def initialize(shift_value)
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    @to_cipher_key = @alphabet.rotate(-shift_value)
    @from_cipher_key = @alphabet.rotate(shift_value)
  end


  def eng_to_cipher(phrase)
    # take given phrase and split into letters and spaces
    letters = phrase.split("")
    # create new array of ciphered letters by
      # getting index in alphabet
        # If " " return " "
        # else return same index from rotated alphabet (key
    ciphered_letters = letters.map do |letter|
      if letter == " "
        " "
      else
        if letter.downcase != letter
          # Is capitalized
          key_index = @alphabet.find_index(letter.downcase)
          @to_cipher_key[key_index].upcase
        else
          key_index = @alphabet.find_index(letter)
          @to_cipher_key[key_index]
        end
      end
    end
    # binding.pry
    # join ciphered letters
    return ciphered_letters.join()
  end 

  def cipher_to_eng(cipher)
    # take given cipher and split into letters and spaces
    letters = cipher.split("")
    # create new array of de-ciphered letters by
      # getting index of letter in rotated alphabet (key)
      # returning letter at index in alphabet
    eng_letters = letters.map do |letter|
      if letter == " "
        " "
      else
        if letter.downcase != letter
          # is capitalized
          alphabet_index = @from_cipher_key.find_index(letter.downcase)
          @alphabet[alphabet_index].upcase
        else
          # binding.pry
          alphabet_index = @from_cipher_key.find_index(letter)
          @alphabet[alphabet_index]
        end
      end
    end
    # join de-ciphered letters
    return eng_letters.join()
  end

  def from_file_to_cipher(input_file)
    # same process as eng_to_cipher above, but read file data into string first
  end

  def from_file_to_eng(cipher_file)
    # same process as cipher_to_eng above, but read file data into string first
  end

end