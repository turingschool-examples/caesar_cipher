require './lib/caesar'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
class CaesarTest < MiniTest::Test
  def setup
    @caesar= Caesar.new
  end

  def test_it_exists
    assert_instance_of Caesar, @caesar
  end

  def test_cipher_code
    result = "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"
    assert_equal result, @caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3) 
  end
end
