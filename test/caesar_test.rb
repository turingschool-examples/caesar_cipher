require 'minitest/pride'
require 'minitest/autorun'
require './lib/caesar.rb'

class CaesarTest < MiniTest::Test

  def test_it_exits
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog")
    assert_instance_of Caesar, caesar
  end

  def test_translate_english_to_ciphertext
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog")
    assert_equal "the quick brown fox jumps over the lazy dog", caesar.eng_to_cipher
  end

  def test_it_convert_string_to_array
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog")
    assert_equal [], caesar.split

  end

  def test_translate_shift3
    caesar = Caesar.new
    assert_equal "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", caesar.eng_to_cipher.split.rotate
  end

end


# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
