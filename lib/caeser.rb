class Caeser

  def initialize(shift_value)
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    @key = @alphabet.rotate(shift_value)
  end


  def eng_to_cipher(phrase)
    # take given phrase and split into letters and spaces
    # create new array of ciphered letters by
      # getting index in alphabet
        # If " " return " "
        # else return same index from rotated alphabet (key)
    # join ciphered letters
  end 

  def cipher_to_eng(cipher)
    # take given cipher and split into letters and spaces
    # create new array of de-ciphered letters by
      # getting index of letter in rotated alphabet (key)
      # returning letter at index in alphabet
    # join de-ciphered letters
  end

  def from_file_to_cipher(input_file)
    # same process as eng_to_cipher above, but read file data into string first
  end

  def from_file_to_eng(cipher_file)
    # same process as cipher_to_eng above, but read file data into string first
  end

end