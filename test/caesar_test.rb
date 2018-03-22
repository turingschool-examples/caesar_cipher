require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

class TestCaesar < Minitest::Test
  def test_class_exsists
    cypher = Caesar.new

    assert_instance_of Caesar, cypher
  end

  def test_one_rotation
    cypher = Caesar.new

    assert_equal 'z', cypher.eng_to_cipher('a', 1)
  end

  def test_multiple_rotations
    cypher = Caesar.new

    assert_equal 'zab', cypher.eng_to_cipher('abc', 1)
  end

  def test_string
    cypher = Caesar.new
    given = cypher.eng_to_cipher('the quick brown fox jumps over the lazy dog', 3)
    answer = 'qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald'

    assert_equal answer, given
  end

  def test_def_case_sensitive
    cypher = Caesar.new
    given = cypher.eng_to_cipher('The quick brown fox JUMPS over the lazy DOG', 3)
    answer = 'Qeb nrfzh yoltk clu GRJMP lsbo qeb ixwv ALD'

    assert_equal answer, given
  end

  def test_from_a_file
    cypher = Caesar.new

    assert_equal "F xj fk x cfib ", cypher.from_file("input.txt")
  end

  def test_cipher_to_english
    cypher = Caesar.new
    given = cypher.cipher_to_eng('Qeb nrfzh yoltk clu GRJMP lsbo qeb ixwv ALD')
    answer = 'The quick brown fox JUMPS over the lazy DOG'

    assert_equal answer, given
  end
end
