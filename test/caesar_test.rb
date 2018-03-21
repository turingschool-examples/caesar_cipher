require "minitest/autorun"
require "minitest/pride"
require "./lib/caesar"
require "pry"

class CaesarTest < Minitest::Test

  def test_caesar_class_exists
    caesar = Caesar.new("test",3)
    assert_equal "test",  caesar.word
  end

  def test_eng_to_cipher
    ceasar = Caesar.new("the quick brown fox jumps over the lazy brown
             dog",3)
    assert_equal "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald",
                  ceasar.eng_to_cipher
  end

end
