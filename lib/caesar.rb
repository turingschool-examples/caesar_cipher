class Caesar
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
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
end
