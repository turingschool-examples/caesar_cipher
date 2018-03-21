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

    assert_equal ["H","e","l","l","o"], caesar.convert_phrase
  end

  def test_convert_ord
    caesar = Caesar.new("Hello")

    assert_equal [72, 101, 108, 108, 111], caesar.convert_ord
  end

  def test_back_to_str
    caesar = Caesar.new("Hello", 3)

    assert_equal "Ebiil", caesar.back_to_str
  end

  def test_shift_ord
    caesar = Caesar.new("Hello", 3)

    assert_equal [69, 98, 105, 105, 108], caesar.shift_ord
  end

  def test_iteration_zero
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog", 3)

    assert_equal "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald", caesar.back_to_str
  end

end
