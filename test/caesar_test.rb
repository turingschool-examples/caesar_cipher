# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
require'minitest/autorun'
require'minitest/pride'
require'./lib/caesar.rb'

class TestCaesar < Minitest::Test

  def test_init
    caesar = Caesar.new("Hello")

    assert_instance_of Caesar, caesar
  end

  def test_convert_phrase
    caesar = Caesar.new("Hello")
    assert_equal ["H","e","l","l","o"], caesar.convert_phrase("Hello")
  end

end
