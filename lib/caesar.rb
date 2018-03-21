require "pry"

class Caesar
  # attr_reader :key

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
        new_letter_num = check_for_bad_decipher_characters(new_letter_num)
      else
        new_letter_num = check_for_bad_encipher_characters(new_letter_num)
      end
      new_letter_num.chr
    end.join
  end #cw

  def check_for_bad_encipher_characters(new_letter_num)
    #avoid punctuation for cipher
    if new_letter_num < @aord && new_letter_num > @capZord
      shift = @aord - new_letter_num
      new_letter_num = @zord - shift + 1
    elsif new_letter_num < @capAord
      shitf - @capAord - new_letter_num
      new_letter_num = @capZord - shift + 1
    end
    new_letter_num
  end

  def check_for_bad_decipher_characters(new_letter_num)
    #avoid punctuation for decipher:
    if new_letter_num > @zord
      shift = @zord - new_letter_num
      new_letter_num = @aord - shift - 1
    elsif new_letter_num > @capZord && new_letter_num < @capAord
      shitf - @capAord - new_letter_num
      new_letter_num = @capZord - shift - 1
    end
    new_letter_num
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
