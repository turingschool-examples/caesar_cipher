require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'
require 'pry'


class CaesarTest < MiniTest::Test
	# binding.pry
	def tests_that_it_exists
		cypher = Caesar.new
		assert_instance_of  Caesar, cypher
	end
	# binding.pry
		def tests_if_there_is_any_text
			cypher = Caesar.new("the quick brown fox jumped over the lazy dog")
			assert_equal Cypher,cypher
		end
end
# I PITY THE FOOL WHO DOESNT WRITE TESTS
