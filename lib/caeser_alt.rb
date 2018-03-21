def caesar_cipher(string, shift = 1)
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher("the quick brown fox jumps over the lazy dog").join

# $ caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
# => "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald"
