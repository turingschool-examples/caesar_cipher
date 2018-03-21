def caesar_cipher(message)
  letters_separated = string_to_array(message)
  letters_rotated = rotate_letters(letters_separated)
  letters_encrypted = encrypt_letters(letters_rotated)
  output(letters_encrypted)
end

def string_to_array(string_text)
  #convert string intop an array
  seperated_letters = string_text.chars
end

def rotate_letters(letters)
  #rotate the array 3 times
  rotated_letters = seperated_letters.rotate(3)
end

#Transcribe the string based on the rotated array
  def encrypt_letters(letters)
    encrypted_letters = rotated_letters.ord
  end

#Print encrypted message
  def ouput(encrypted_message)
    puts "The message encrypted is: #{encrypted_letters}"
  end


eng_text = "the quick brown fox jumps over the lazy dog"
caesar_cipher(eng_text)
