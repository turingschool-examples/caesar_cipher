require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/caesar'

class CaesarTest < Minitest::Test

  def test_it_exists
    caesar = Caesar.new
    assert_instance_of Caesar, caesar
  end

  def test_it_splits_string
    skip
    caesar = Caesar.new
    assert_equal @letters, ['t','h','e',' ','q','u','i','c','k',' ','b','r','o','w','n']
  end

end
