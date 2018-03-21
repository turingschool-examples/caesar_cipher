class Caesar

  attr_reader :key, :eng_to_cipher

  def initialize(eng_to_cipher)
    @eng_to_cipher = eng_to_cipher
    # @left = 3
  end

  def eng_to_cipher
   @eng_to_cipher = "the quick brown fox jumps over the lazy dog"
  # @left = 3
  end

  def split
    @eng_to_cipher = "the quick brown fox jumps over the lazy dog"
    a.split("")
  end

  def rotate
    @eng_to_cipher.rotate(-3)
    eng_to_cipher = -3
  end

end
