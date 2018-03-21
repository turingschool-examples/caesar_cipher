require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'

class CaesarTest < Minitest::Test
  attr_reader :caesar

  def setup
    @caesar = Caesar.new
  end

  def test_caesar_exists
    assert_instance_of Caesar, caesar
  end

end
# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
