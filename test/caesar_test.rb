require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar.rb'
require 'pry'

class TestCaesar < Minitest::Test
  def test_it_exists
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog", 3)
    assert_instance_of Caesar, caesar
  end

  def test_eng_to_cipher
    caesar = Caesar.new("the quick brown fox jumps over the lazy dog", 3)
    caesar = Caesar.new("The quick brown fox JUMPS over the lazy DOG", 3)
    assert "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", caesar.eng_to_cipher
    assert "Qeb nrfzh yoltk clu GRKMP lsbo qeb ixwv ALD", caesar.eng_to_cipher
  end

  def test_from_file
    caesar = Caesar.new
    assert "F xj fk x cfib ", caesar.from_file("input.txt")
  end


end
