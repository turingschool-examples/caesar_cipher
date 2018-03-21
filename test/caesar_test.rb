require 'minitest/autorun'
require 'minitest/pride'
require'./lib/caesar'
require 'pry'

class CaesarTest < Minitest::Test
  attr_reader :caesar
  def setup
    @caesar = Caesar.new
  end

  def test_it_exists
    assert_instance_of Caesar, caesar
  end

  def test_it_can_translate_english_to_cipher
    assert_equal "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
  end

  def test_it_is_case_sensitive
    assert_equal "Qeb nrfzh yoltk clu GRJMP lsbo qeb ixwv ALD",
    caesar.eng_to_cipher("The quick brown fox JUMPS over the lazy DOG", 3)
  end

  def test_it_can_take_text_from_a_file
    
    assert_equal "F xj fk x cfib ", caesar.from_file("input.txt")
  end

  def test_it_can_translate_cipher_to_english
    assert_equal "the quick brown fox jumps over the lazy dog",  caesar.cipher_to_eng("qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald")
  end

end
