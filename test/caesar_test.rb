require "Minitest/autorun"
require "Minitest/pride"
require_relative '../lib/caesar'

class CaesarTest < MiniTest::Test
  def setup
    @shift_3 = Caesar.new
  end

  def test_eng_to_cypher
    assert_equal "Meoxpb" , @shift_3.eng_to_cypher("Phrase")
    assert_equal "pljbqefkd" , @shift_3.eng_to_cypher("something")
  end

  def test_cypher_to_eng
    assert_equal "phrase" , @shift_3.cypher_to_eng("meoxpb")
    assert_equal "friends, romans, countrymen" , @shift_3.cypher_to_eng("cofbkap, oljxkp, zlrkqovjbk")
    assert_equal "beware the ides of march!" , @shift_3.cypher_to_eng("ybtxob qeb fabp lc jxoze!")
  end
  def test_load
    assert_equal "Cofbkap, Oljxkp, zlrkqovjbk, ibka jb vlro bxop;F zljb ql yrov Zxbpxo, klq ql moxfpb efj." , @shift_3.eng_to_cypher(Caesar.load_text('./data/phrase.txt'))
  end
end

# YOUR TESTS went HERE
# I PITY THE FOOL WHO DOESNT WRITE TESTS
