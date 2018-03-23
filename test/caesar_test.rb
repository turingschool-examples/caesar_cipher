
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'

class Caesar < Minitest::Test
  def test_Caesar_exists
    cipher = Caesar.new

    assert_instance_of Caesar, cipher
  end

  def encrypt("the quick brown fox jumps over the lazy dog")
    cipher = Caesar.new

    assert_equal "the quick brown fox jumps over the lazy dog", text
  end
end
