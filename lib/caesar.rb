require 'pry'
class Caesar
  attr_reader :cipher

  def initialize
    @cipher = []
  end

     plain = "the quick brown fox jumps over the lazy dog"
     shift = 3


    def eng_to_cipher(string, shift)
      alphabet = Array("a".."z")
      encryption_key = Hash[alphabet.zip(alphabet.rotate(shift))]
      cipher = string.chars.map do |key|
        encryption_key.fetch(key," ")
      end.join
    end

    def eng_to_cipher_case_sensitive(string, shift)
      lower_case = Array("a".."z")
      upper_case = Array("A".."Z")
      alphabet = lower_case + upper_case
      # numbers = [0..52]
      # letter_to_number = Hash[alphabet.zip(numbers)]
      encryption_key = Hash[alphabet.zip(alphabet.rotate(shift))]
      cipher = string.chars.map do |char|
        encryption_key.fetch(char," ")
      end.join
    end

  #   def eng_to_cipher_case_sensitive(string, shift)
  #     lower_case = Array("a".."z")
  #     upper_case = Array("A".."Z")
  #     alphabet = lower_case + upper_case
  #     # numbers = [0..52]
  #     # letter_to_number = Hash[alphabet.zip(numbers)]
  #     encryption_key = Hash[alphabet.zip(alphabet.rotate(shift))]
  #     cipher = string.chars.map do |char|
  #       encryption_key.fetch(char," ")
  #     end.join
  #   end
  #
  #   if is_upper?
  # def is_upper?
  #   self == self.upcase
  # end





    def eng_to_cipher_text
      txt = ""
      file='input.txt'
      f = File.open(file, "r")
      f.each_line do |line|
      txt << line.delete("\n")
      end
      return txt
    end

    def cipher_to_english
      def eng_to_cipher(string, shift)
        alphabet = Array("a".."z")
        encryption_key = Hash[alphabet.rotate(shift).zip(alphabet)]
        plain = string.chars.map do |key|
          encryption_key.fetch(key," ")
        end.join
      end
    end




end


#iteration 0 - english to cipher
# plain = "the quick brown fox jumps over the lazy dog"
# shift = -3
#
# caesar = Caesar.new
# cipher = caesar.eng_to_cipher(plain, shift)
# p cipher


# iteration 1 - case sensitive english to cipher
shift = -3
plain = "The quick brown fox JUMPS over the lazy DOG"
with_upper_case = Caesar.new
cipher = with_upper_case.eng_to_cipher_case_sensitive(plain, shift)
p cipher

# iteration 2 - text file of english to cipher
# caesar = Caesar.new
# txt = caesar.eng_to_cipher_text
# puts caesar.eng_to_cipher_case_sensitive(txt, 3)

# # iteration 3 - cipher to english
# cipher = "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"
# shift = 3
#
# caesar = Caesar.new
# cipher = caesar.eng_to_cipher(cipher, shift)
# p cipher
