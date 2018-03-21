require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

class CaesarTest < Minitest::Test

  def test_caeser_exists
    caesar = Caesar.new("The quick", 3)
    assert_instance_of Caesar, caesar
  end

  def test_eng_to_cipher
    caesar = Caesar.new("The quick", 3)
    assert_equal "qeb nrfzh", caesar.eng_to_cipher("The quick", 3)
  end

  def test_file_to_cipher
    skip
  end

  def test_cipher_to_eng
    skip
  end


end
