
class Caesar
  attr_reader  :word, :shift

  def initialize (word, shift)
    @word = word
    @shift = shift
  end

  def word
    @word
  end

  def eng_to_cipher
    code = @word.chars.map do |c|
      c = c.ord
    end
#returns 97 through 122 and spaces are 32
    shifted = code.map do |num|
      if num == 32
        num
      elsif num >= 100
        num = num - @shift
      elsif num == 97
        num = 120
      elsif num == 98
        num = 121
      elsif num == 99
        num = 122
      end
    end


    result = shifted.map {|number| number.chr}.join
  binding.pry 
  end



end
