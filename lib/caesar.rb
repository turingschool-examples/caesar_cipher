require 'pry'
class Caesar
  attr_reader :key

  def initialize
    @key = 3
    @alphabet =* "a".."z"
    @cap_alphabet =* "A".."Z"
  end

  def self.load_text(file)
    text = File.open(file, "r")
    full_text = []
    text.each_line do |line|
      full_text << line.to_s
    end
    # binding.pry
    full_text = full_text.join
    full_text.gsub("\n","")
  end


  def eng_to_cypher(phrase, key = @key)
    array_to_shift = phrase.split("")
    shifted = array_to_shift.map do |letter|
      if @alphabet.include?(letter) == false && @cap_alphabet.include?(letter) == false
        letter
      elsif @alphabet.include?(letter)
        # binding.pry
        @alphabet[@alphabet.index(letter) - key]
      elsif @cap_alphabet.include?(letter)
        @cap_alphabet[@cap_alphabet.index(letter) - key]
      end
    end
    shifted.join
  end

  def cypher_to_eng(phrase, key = @key)
    array_to_shift = phrase.split("")
    shifted = array_to_shift.map do |letter|
      if @alphabet.include?(letter) == false && @cap_alphabet.include?(letter) == false
        letter
      elsif @alphabet.include?(letter)
        # binding.pry
        @alphabet.reverse[@alphabet.reverse.index(letter) - key]
      elsif @cap_alphabet.include?(letter)
        @cap_alphabet.reverse[@cap_alphabet.reverse.index(letter) - key]
      end
    end
    shifted.join
  end

end

# caesar = Caesar.new
# puts caesar.cypher_to_eng("meoxpb")
# puts caesar.load('../data/phrase.txt')
# puts caesar.eng_to_cypher(load('../data/phrase.txt'))
