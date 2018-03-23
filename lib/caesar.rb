class Caesar

  def initialize(shift, eng_to_cipher = "the quick brown fox jumps over the lazy dog".to_a)
    @eng_to_cipher = eng_to_cipher
    @cipher = eng_to_cipher.chars.rotate(shift).join
  end

  def encrypt(text)
    text.tr(@eng_to_cipher, @cipher)
  end

  def decrypt(text)
    text.tr(@cipher, @eng_to_cipher)
  end
end

# $ caesar.eng_to_cipher("the quick brown fox jumps over the lazy dog", 3)
# => "qeb nrfzh yoltk clu grjmp lsbo qeb ixwv ald"
