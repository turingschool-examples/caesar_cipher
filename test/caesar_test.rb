require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar.rb'
require 'pry'

class CaesarTest < Minitest::Test

  def setup
    @cipher = Caesar.new
  end

  def test_it_exists
    assert_instance_of Caesar, @cipher
  end

#   Iteration 0
# Translate English to ciphertext
#
# lowercase letters
#   $ caesar = Caesar.new
#   => #<Caesar:0x007fa1ab98cac0>
#   $ caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
#   => "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"

  def test_it_ordinates
    assert_equal [116, 101, 115, 116], @cipher.eng_to_cipher("test", 0)
  end

  def test_it_shifts_left
    assert_equal [113, 98, 112, 113], @cipher.eng_to_cipher("test", 3)
  end


end
