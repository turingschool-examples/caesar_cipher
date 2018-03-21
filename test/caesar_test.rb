require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'


class CaesarTest < Minitest::Test

  def test_it_exists
    cc = Caesar.new

    assert_instance_of Caesar, cc
  end

  def test_one_letter
    cc = Caesar.new
    cc.cypher(-3)

    assert_equal "q", cc.one_letter("t")
  end
end
