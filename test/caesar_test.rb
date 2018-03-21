require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'


class CaesarTest < Minitest::Test

  def test_it_exists
    cc = Caesar.new

    assert_instance_of Caesar, cc
  end

  def test_one_letter
    cc = Caesar.new
    cc.cypher(-3)

    assert_equal "q", cc.one_letter("t")
  end

  def test_encrypt
    cc = Caesar.new
    # binding.pry
    assert_equal "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", cc.encrypt("the quick brown fox jumps over the lazy dog", -3)
  end

  def translate_from_file
    cc = Caesar.new

    assert_equal "", cc.from_file
  end

end
