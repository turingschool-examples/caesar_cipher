class Caesar
  attr_reader :phrase

  def initialize(phrase, shift = 0)
    @phrase = phrase
    @shift = shift
  end

  def convert_phrase
    new_phrase = @phrase.chars
  end

  def convert_ord
    phrase_array = @phrase.chars
    phrase_array.map do |letter|
      letter.ord
    end
  end

  def shift_ord
    convert_ord.map do |num|
      num - @shift
    end
  end

  def back_to_str
    answer = shift_ord.map do |index|
      index.chr
    end
    answer.join('')
  end


end
