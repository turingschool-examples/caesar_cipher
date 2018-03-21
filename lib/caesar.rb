class Caesar
  attr_reader :alphabet, :cipher
  attr_accessor :shift
  def initialize
    @alphabet = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
    @shift = 0
  end

  def to_cipher(string, shift)
    @shift = shift
    cipher = alphabet.chars.rotate(@shift += 20).join
    return string.swapcase.tr(alphabet, cipher) if cipher.include?(('A'..'Z').to_a.join)
    string.tr(@alphabet, cipher)
  end

  def from_file(filename)
    File.open(filename).each do |line|
      @line = line.strip.to_s
    end
    to_cipher(@line, @shift + 3)
  end
end
