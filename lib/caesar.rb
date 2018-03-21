class Caesar
  attr_reader :character_hash
  def initialize
    @characters = (" ".."z")
    @character_hash = {}
  end

  def rotate_characters(rotation)
    @characters.to_a.rotate(rotation)
  end

  def cypher(rotation)
    rotated = rotate_characters(rotation)
    @character_hash = Hash[@characters.zip(rotated)]
  end

  def one_letter(letter)
    @character_hash[letter]
  end

  def encrypt(phrase, rotation)
    cypher(rotation)
    
  end
end
