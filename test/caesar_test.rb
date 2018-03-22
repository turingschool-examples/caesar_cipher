require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

# YOUR TESTS GO HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
class CaesarTest < Minitest::Test
  attr_reader :caesar
  def setup
    @caesar = Caesar.new
  end

  def test_caesar_exists
    assert_instance_of Caesar, caesar
  end

  def test_caesar_translaters_english_to_code
    actual_string   = "the quick brown fox jumps over the lazy dog"
    expected_string = "qeb nrfZh Yoltk clu grjmp lsbo qeb iXwv ald"
    assert_equal expected_string, caesar.to_cipher(actual_string, 3)
  end

  def test_caesar_translation_is_case_sensitive
    actual_string   = "The quick brown fox JUMPS over the lazy DOG"
    expected_string = "Qeb nrfZh Yoltk clu GRJMP lsbo qeb iXwv ALD"
    assert_equal expected_string, caesar.to_cipher(actual_string, 3)
  end

  def test_caesar_can_translate_from_a_file
    expected_string = "F Xj fk X cfib"
    assert_equal expected_string, caesar.from_file('./input.txt')
  end

  def test_caesar_can_decipher_code
    expected_string = "the quick brown fox jumps over the lazy dog"
    actual_string   = "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"
    assert_equal expected_string, caesar.to_english(actual_string)
  end
end
