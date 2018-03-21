class Caesar
attr_reader :alphabet, :cipher
  def initialize
    @alphabet = ('a'..'z').to_a.join
  end

  def to_cipher(string, shift)
    string.tr(alphabet, )
  end
end
