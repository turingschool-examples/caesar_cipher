
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'

class CaesarTest < Minitest::Test

  def test_if_it_exists
    caesar = Caesar.new
    assert_instance_of Caesar, caesar

  end

  def test_rotate_method
    caesar = Caesar.new
    result = ["y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x"]
    assert_equal result, caesar.rotate

  end

  def test_zipped_array

    caesar = Caesar.new
    result = [["a", "y"], ["b", "z"], ["c", " "], ["d", "a"], ["e", "b"], ["f", "c"], ["g", "d"], ["h", "e"], ["i", "f"], ["j", "g"], ["k", "h"], ["l", "i"], ["m", "j"], ["n", "k"], ["o", "l"], ["p", "m"], ["q", "n"], ["r", "o"], ["s", "p"], ["t", "q"], ["u", "r"], ["v", "s"], ["w", "t"], ["x", "u"], ["y", "v"], ["z", "w"], [" ", "x"]]
    assert_equal result, caesar.zipped_array
  end

  def test_for_turn_into_hash
    caesar = Caesar.new
    result = {"a"=>"y", "b"=>"z", "c"=>" ", "d"=>"a", "e"=>"b", "f"=>"c", "g"=>"d", "h"=>"e", "i"=>"f", "j"=>"g", "k"=>"h", "l"=>"i", "m"=>"j", "n"=>"k", "o"=>"l", "p"=>"m", "q"=>"n", "r"=>"o", "s"=>"p", "t"=>"q", "u"=>"r", "v"=>"s", "w"=>"t", "x"=>"u", "y"=>"v", "z"=>"w", " "=>"x"}
    assert_equal result, caesar.turn_into_hash

  end

  def test_eng_to_cipher
    caesar = Caesar.new
    result = "qebxnrf hxzoltkxcluxgrjmpxlsboxqebxiywvxald"
    assert_equal result, caesar.encrypt("the quick brown fox jumps over the lazy dog", 3)
    result_next = "the quick brown fox jumps over the lazy dog"
    assert_equal result_next, caesar.decrypt(result)
  end







end
# YOUR TESTS GOES HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
