# YOUR TESTS GOES HERE
# # I PITY THE FOOL WHO DOESNT WRITE TESTS
require 'minitest/autorun'
require 'minitest/pride'
require './lib/caesar'

class CaesarTest < MiniTest::Test
# Caesar Cipher
# Using this repo, build a well tested Ruby program that translates a message using the Caesar Cipher.
#
# You can read more about the Caesar Cipher here.
#
# Note: We are shifting left. So if we shift 3, A is now X, D is now A and so forth.

# Push your solution to your fork
# Use Github's interface to create a pull request
# Iteration 0
def setup
  @caesar = Caesar.new
end

def test_it_can_cipher
coded = @caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
assert_equal "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald", coded
end

# Iteration 1
def test_it_can_handle_cases
  coded = @caesar.eng_to_cipher("The quick brown fox JUMPS over the lazy DOG", 3)
  assert_equal "Qeb nrfzh yoltk clu GRJMP lsbo qeb ixwv ALD", coded
end

# Iteration 2
# Translate English to ciphertext from a file
def test_it_can_cipher_a_file
  file = File.open("input.txt", "w")
  file.write("I am in a file")
  file.close
  assert_equal "F xj fk x cfib",  @caesar.from_file("input.txt")
end

# Iteration 3
# Translate ciphertext to English
def test_it_can_decipher
  assert_equal "the quick brown fox jumps over the lazy dog", @caesar.cipher_to_eng("qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald")
end

end #test class
