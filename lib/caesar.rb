class Caesar
attr_reader :alphabet,
            :cypher

  def initialize(alphabet = ('a'..'z').to_a)
    @alphabet = alphabet
    # @cypher = shift.rotate
  end

  def eng_to_cipher(text, shift)
    code = text.split("")
    cypher_code = code.map do |letter|
      # require 'pry' ; binding.pry
      letter.rotate(-shift)

    end
    cypher_code
  end

end
