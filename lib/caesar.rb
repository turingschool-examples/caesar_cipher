require "pry"

class Caesar

  def initialize
    @aord = "a".ord #97
    @capAord = "A".ord #65
    @zord = "z".ord #122
    @capZord = "Z".ord #90
  end

  def eng_to_cipher(message, rotation, decipher = false)
    #need to ignore spaces
    words = message.split
    new_words = words.map do |word|
      cipher_word(word, rotation, decipher)
    end
    new_words.join(" ")
  end #e2c

  def cipher_word(message, rotation, decipher)
    letters = message.split("")
    letters.map do |letter|
      letter_num = letter.ord
      new_letter_num = letter_num - rotation
      #needs to avoid punctuation:
      if decipher
        new_letter_num = check_bad_decipher_chars(new_letter_num)
      else
        new_letter_num = check_bad_encipher_chars(new_letter_num)
      end
      new_letter_num.chr
    end.join
  end #cw

  def check_bad_encipher_chars(letter_num)
    #avoid punctuation for cipher
    if letter_num < @aord && letter_num > @capZord
      shift = @aord - letter_num
      letter_num = @zord - shift + 1
    elsif letter_num < @capAord
      shitf - @capAord - letter_num
      letter_num = @capZord - shift + 1
    end
    letter_num
  end

  def check_bad_decipher_chars(letter_num)
    #avoid punctuation for decipher:
    if letter_num > @zord
      shift = @zord - letter_num
      letter_num = @aord - shift - 1
    elsif letter_num > @capZord && letter_num < @capAord
      shitf - @capAord - letter_num
      letter_num = @capZord - shift - 1
    end
    letter_num
  end

  def from_file(file_name)
    file = File.open(file_name, "r")
    message = file.read
    # binding.pry
    eng_to_cipher(message, 3)
  end

  def cipher_to_eng(message)
    eng_to_cipher(message, -3, true)
  end

end #caesar class

# caesar = Caesar.new
# binding.pry
