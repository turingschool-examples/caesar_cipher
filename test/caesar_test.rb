require "minitest/autorun"
require "minitest/pride"
require "./lib/caesar.rb"
require "pry"

class CaeserTest < Minitest::Test
  def test_caeser_exists
    caesar = Caesar.new

    assert_instance_of Caesar, caesar
  end

  def test_caeser_cipher

    caesar = Caesar.new

    assert_equal "qeb nrfzh yoltk clu grkmp lsbo qeb ixwv ald", caesar.caesar_cipher("the quick brown fox jumps over the lazy dog", 3)
  end


end
