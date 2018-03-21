class Caesar

  def eng_to_cipher(phrase, count)
    new_phrase = phrase.chars.map do |letter|
      if letter == letter.upcase
        upper_case_transform(letter, count)
      else 
        lower_case_transform(letter, count)
      end
    end
    puts new_phrase.join
  end

  def upper_case_transform(letter, count)
    letters = ("A".."Z").to_a.join
    new_letters = letters.chars.rotate(-count).join
    new_letter = letter.tr(letters, new_letters)
  end

  def lower_case_transform(letter, count)
    letters = ("a".."z").to_a.join
    new_letters = letters.chars.rotate(-count).join
    new_letter = letter.tr(letters, new_letters)
  end

  def from_file(input_file, count)
    input_array = File.readlines(input_file)
    input_array.each do |line|
      eng_to_cipher(line, count)
    end
  end

  def cipher_to_eng(phrase, count)
    new_phrase = phrase.chars.map do |letter|
      if letter == letter.upcase
        letters = ("A".."Z").to_a.join
        new_letters = letters.chars.rotate(-count).join
        new_letter = letter.tr(new_letters, letters)
      else 
        letters = ("a".."z").to_a.join
        new_letters = letters.chars.rotate(-count).join
        new_letter = letter.tr(new_letters, letters)
      end
    end 
    puts new_phrase.join
  end

end

a = Caesar.new
a.from_file("example.txt", 4)
a.cipher_to_eng("F xj fk x cfib", 3 )

