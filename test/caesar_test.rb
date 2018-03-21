
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'

class CaesarTest < Minitest::Test

  def test_if_it_exists
    caesar = Caesar.new
    assert_instance_of Caesar, caesar

  end







end
# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
