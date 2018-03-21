require './test/caesar_test'

class Caesar

  attr_accessor :string
                :number
                :char_map
                :letters

  def initialize
    @string = "the quick brown"
    @number = 3
    @char_map = ("a".."z").to_a
    @letters = []
  end

  def string_splitter(string)
    @letters << @string.split('')
  end

  def rotator(string_splitter, number)
    index = @char_map.index(letter)
    @rotated = @letters.each do |letter|
      @char_map.rotate(number)[index]
    end

  end
end
