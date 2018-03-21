class CaesarCipher
  attr_accessor :data, :shift
  def initialize(data, shift)
    @data = data
    @shift = 3
  end

  def encrypt
  end
  def decipher
  end

end

p cipher = CaesarCipher.new("the quick brown fox jumps over the lazy dog", 3)
p cipher.encrypt
p cipher.decrypt
