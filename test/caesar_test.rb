require './lib/caesar.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CaesarTest < Minitest::Test
  def test_cipher_exists
    cipher = CaesarCipher.new("the quick brown fox jumps over the lazy dog", 3)
    assert_instance_of CaesarCipher, cipher
  end
  def test_has_data
    cipher = CaesarCipher.new("the quick brown fox jumps over the lazy dog", 3)
    assert_equal "the quick brown fox jumps over the lazy dog", cipher.data
  end
  def test_can_have_other_data
  cipher = CaesarCipher.new("this is a different string", 3)
  assert_equal "this is a different string", cipher.data
  end
  def test_has_shift
    cipher = CaesarCipher.new("the quick brown fox jumps over the lazy dog", 3)
    assert_equal 3, cipher.shift
  end
  # def test_can_encrypt
  # end
  # def has_case_sensitivity
  # end
  # def test_can_decipher
  # end
end


# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
