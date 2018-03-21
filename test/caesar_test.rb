require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

class CaesarTest < Minitest::Test
  attr_reader :caesar

  def setup
    @caesar = Caesar.new
  end

  def test_caesar_exists
    assert_instance_of Caesar, caesar
  end

  def test_caesar_translaters_english_to_code
    actual_string   = "the quick brown fox jumps over the lazy dog"
    expected_string = "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald"
    assert_equal expected_string, caesar.to_cipher(actual_string, 3)
  end

end
# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
