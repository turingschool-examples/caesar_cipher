require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/caesar'

class CaesarTest < Minitest::Test

  def test_class_exists
    caesar = Caesar.new

    assert_instance_of Caesar, caesar
  end

  def test_it_accepts_message
    caesar = Caesar.new
    caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)

    assert_equal "the quick brown fox jumps over the lazy dog", caesar.message
  end

  def test_it_accepts_shift_key
    caesar = Caesar.new
    caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)

    assert_equal -3, caesar.rotation
  end

  def test_message_is_split_into_indvidual_characters
    caesar = Caesar.new
    caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)

    assert_equal ["t", "h", "e", " ", "q", "u", "i", "c", "k", " ", "b", "r", "o",
       "w", "n", " ", "f", "o", "x", " ", "j", "u", "m", "p", "s", " ", "o", "v",
       "e", "r", " ", "t", "h", "e", " ", "l", "a", "z", "y", " ", "d", "o", "g"],
       caesar.individual_characters
  end

  def test_it_has_a_starting_alphabet
    caesar = Caesar.new

    assert_kind_of Array, caesar.alphabet
  end

  def test_creation_of_key_for_alphabet
    caesar = Caesar.new
    caesar.eng_to_cipher("the", 3)

    assert_kind_of Hash, caesar.key
  end

  def test_it_can_code_one_letter
    caesar = Caesar.new
    caesar.eng_to_cipher("t", 3)

    assert_equal "q", caesar.coded_message
  end

  def test_it_can_code_one_word
    caesar = Caesar.new
    caesar.eng_to_cipher("the", 3)

    assert_equal "qeb", caesar.coded_message
  end

  def test_it_can_code_message
    caesar = Caesar.new
    caesar.eng_to_cipher("the quick brown", 3)

    assert_equal "qeb nrfzh yoltk", caesar.coded_message
  end

  def test_eng_to_cipher_outputs_correct_coded_message
    caesar = Caesar.new

    assert_equal "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
  end
end
