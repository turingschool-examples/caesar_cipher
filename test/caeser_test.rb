# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caeser'

class CaeserTest < MiniTest::Test
  
  def setup
    @caeser = Caeser.new(3)
  end
  
  def test_caeser_exists
    assert_instance_of Caeser, @caeser
  end

  def test_single_english_to_cipher_translation
    assert_equal "A", @caeser.eng_to_cipher("D")
  end

  def test_single_cipher_to_english_translation
    assert_equal "G", @caeser.cipher_to_eng("J")
  end

  def test_single_case_sensitive_eng_to_cipher_translation
    assert_equal "a", @caeser.eng_to_cipher("d")
    refute_equal "G", @caeser.eng_to_cipher("j")
  end

  def test_single_case_sensitive_cipher_to_eng_translation
    assert_equal "x", @caeser.cipher_to_eng("a")
    refute_equal "J", @caeser.cipher_to_eng("g")
  end

  def test_pangram_english_to_cipher_translation
    pangram = "the quick brown fox jumps over the lazy dog"
    cipher_result = "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald"
    assert_equal cipher_result, @caeser.eng_to_cipher(pangram)
  end

  def test_pangram_case_sensitive_english_to_cipher_translation
    pangram = "The quick brown fox JUMPS over the lazy DOG"
    cipher_result = "Qeb nrfzh yoltk clu GRJMP lsbo qeb ixwv ALD"
    assert_equal cipher_result, @caeser.eng_to_cipher(pangram)
  end

  def test_input_from_file_to_cipher
    # input_file = File.read("./data/input.txt")
    cipher_result = "F xj fk x cfib "
    assert_equal cipher_result, @caeser.from_file_to_cipher("./data/input.txt")
  end

  def test_cipher_text_to_eng_translation
    skip
    cipher_text = "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald"
    eng_result = "the quick brown fox jumps over the lazy dog"
    assert_equal eng_result, @caeser.cipher_to_eng(cipher_text)
  end

  def test_case_sensitive_cipher_to_eng_translation
    skip
    cipher_text = "Qeb nrfzh yoltk clu GRKMP lsbo qeb ixwv ALD"
    eng_result = "The quick brown fox JUMPS over the lazy DOG"
    assert_equal eng_result, @caeser.cipher_to_eng(cipher_text)
  end

  def test_input_from_cipher_file_to_eng
    skip
    # cipher_input = File.read("./data/ciper_input.txt")
    assert_equal "I am in a file ", @caeser.from_file_to_eng("./data/ciper_input.txt")
  end

end