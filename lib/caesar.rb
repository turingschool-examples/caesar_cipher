class Caesar
  attr_reader :key

  def initialize(key, shift)
    @key = key
    @shift = shift
  end


  def eng_to_cipher(key = "The quick brown fox JUMPS over the lazy DOG", move = 3)
    alphabet = Array('a'..'z')
    lower_case = Hash[alphabet.zip(alphabet.rotate(move))]

    alphabet = Array('A'..'Z')
    upper_case = Hash[alphabet.zip(alphabet.rotate(move))]

    combine = lower_case.merge(upper_case)
    key.chars.map {|c| combine.fetch(c, c)}
  end

end

File.open("input.txt", "w").each do |line|
  line.puts "I am in a file".eng_to_cipher
end
