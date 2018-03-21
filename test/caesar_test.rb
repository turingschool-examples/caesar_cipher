require '.lib/ceaser.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class CaesarTest < Minitest::Test
  def test_cipher_exists
    cipher = CaesarCipher.new
    assert_instance_of CaesarCipher, cipher
  end
  def test_has_key
  end
  def test_has_offset
  end
  def test_can_cipher
  end
  def has_case_sensitivity
  end
  def test_can_decipher
  end 
end


# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
