# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
require "minitest/autorun"
require "minitest/pride" #Color
require 'pry'

class Caesar < Minitest::Test

  def test_it_exists
    caesar = Caesar.new
    assert_instance_of Caesar, caesar
  end
end
