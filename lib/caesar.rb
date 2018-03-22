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
        rotate_capital(letter, key)
      else
        rotate(letter, key)
      end
    end
    encrypted.join('')
  end

  def rotate_capital(letter, key)
    lower = letter.downcase
    index = 0
    index += 1 until lower == rotation_key(key)[index][0]
    rotation_key(key)[index][1].upcase
  end

  def rotate(letter, key)
    index = 0
    index += 1 until letter == rotation_key(key)[index][0]
    rotation_key(key)[index][1]
  end

  def cipher_to_eng(message, key = 3)
    capitals = ('A'..'Z').to_a
    encrypted = message.chars.map do |letter|
      if letter == ' '
        letter
      elsif capitals.include?(letter)
        unrotate_capital(letter, key)
      else
        unrotate(letter, key)
      end
    end
    encrypted.join('')
  end

  def unrotate_capital(letter, key)
    lower = letter.downcase
    index = 0
    index += 1 until lower == unrotate_key(key)[index][0]
    unrotate_key(key)[index][1].upcase
  end

  def unrotate(letter, key)
    index = 0
    index += 1 until letter == unrotate_key(key)[index][0]
    unrotate_key(key)[index][1]
  end

  def from_file(file)
    lines = []
    File.open('./lib/' + file).each do |line|
      lines << line
    end
    message_lines = lines.map(&:chomp)
    message = message_lines.join
    eng_to_cipher(message)
  end
end
