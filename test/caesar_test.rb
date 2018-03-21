# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require "./lib/caesar"

class TestCaesar < Minitest::Test
    def test_caesar_cipher
      caesar = Caesar.new
      alphabet =
      assert_equal 'a'..'z', caesar_cipher.alphabet
    end


end
