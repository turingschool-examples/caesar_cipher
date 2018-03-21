class Caesar
  attr_reader :code,
              :alphabet

  def initialize
    @alphabet = ("a".."z").to_a
      # + ('A'..'Z').to_a.join) - iteration 1
    @code = []
  end

  def eng_to_cipher(msg_to_be_encoded, amt_shift)
    amt_shift.-@
    ascii_msg = msg_to_be_encoded.chars.map(&:ord)
    #ordinates each char in array to ascii number

    # shift_it = @alphabet.size - amt_shift
    # #scalable shift to include different sizes of alphabets and glyphs.

    shifted_msg = ascii_msg.map do |character|
      character + 
    end
    #shifts message left according to passed amt_shift

  #  @code = shifted.map(&:chr).join
    #turns ordinated characters back to characters and rejoins to string

  end

end


=begin
Snippets:
[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }

@alphabet = (("a".."z").to_a.join + ('A'..'Z').to_a.join)
@cipher = alphabet.chars.rotate(shift).join

Want to use subarrays for words to keep space integrity
=end
