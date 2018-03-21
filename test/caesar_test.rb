
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'

class CaesarTest < Minitest::Test

  def test_if_it_exists
    caesar = Caesar.new
    assert_instance_of Caesar, caesar
    result = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", " "]
    assert_equal result, caesar.dictionary

  end

  def test_rotate_method
    caesar = Caesar.new
    assert_equal 53, caesar.rotate.count

  end

  def test_zipped_array
    caesar = Caesar.new
    assert_equal 53, caesar.zipped_array.count
  end

  def test_for_turn_into_hash
    caesar = Caesar.new
    assert_equal 53, caesar.turn_into_hash.count

  end

  def test_if_invert_works
    caesar = Caesar.new
    assert_equal 53, caesar.invert_array.count
  end

  def test_eng_to_cipher
    caesar = Caesar.new
    result = "qebXnrf hXZoltkXcluXgrjmpXlsboXqebXiYwvXald"
    assert_equal result, caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
  end

  def test_case_sensitivity
    caesar = Caesar.new
    result = "QebXnrf hXZoltkXcluXGRJMPXlsboXqebXiYwvXALD"
    assert_equal result, caesar.eng_to_cipher("The quick brown fox JUMPS over the lazy DOG", 3)
  end

  def test_if_decrypt_works
    caesar = Caesar.new
    caesar.eng_to_cipher("The quick brown fox JUMPS over the lazy DOG", 3)
    result = "The quick brown fox JUMPS over the lazy DOG"
    assert_equal result, caesar.cipher_to_eng("QebXnrf hXZoltkXcluXGRJMPXlsboXqebXiYwvXALD")
  end


end
