class Caesar
  def rotation_key(key)
    rotation = ('a'..'z').to_a
    static = ('a'..'z').to_a
    shifted = rotation.rotate(-key)
    static.zip(shifted)
  end

  def unrotate_key(key)
    rotation = ('a'..'z').to_a
    static = ('a'..'z').to_a
    shifted = rotation.rotate(key)
    static.zip(shifted)
  end

  def eng_to_cipher(message, key = 3)
    capitals = ('A'..'Z').to_a
    encrypted = message.chars.map do |letter|
      if letter == ' '
        letter
      elsif capitals.include?(letter)
        lower = letter.downcase
        index = 0
        index += 1 until lower == rotation_key(key)[index][0]
        rotation_key(key)[index][1].upcase
      else
        index = 0
        index += 1 until letter == rotation_key(key)[index][0]
        rotation_key(key)[index][1]
      end
    end
    encrypted.join('')
  end

  def cipher_to_eng(message, key = 3)
    capitals = ('A'..'Z').to_a
    encrypted = message.chars.map do |letter|
      if letter == ' '
        letter
      elsif capitals.include?(letter)
        lower = letter.downcase
        index = 0
        index += 1 until lower == unrotate_key(key)[index][0]
        unrotate_key(key)[index][1].upcase
      else
        index = 0
        index += 1 until letter == unrotate_key(key)[index][0]
        unrotate_key(key)[index][1]
      end
    end
    encrypted.join('')
  end

  def from_file(file)
    lines = []
    File.open('./lib/' + file).each do |line|
      lines << line
    end
    message_lines = lines.map {|line| line.chomp}
    message = message_lines.join
    eng_to_cipher(message)
  end
end
