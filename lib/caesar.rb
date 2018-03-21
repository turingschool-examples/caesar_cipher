class Caesar
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => "x",
                    "b" => "y",
                    "c" => "z",
                    "d" => "a",
                    "e" => "b",
                    "f" => "c",
                    "g" => "d",
                    "h" => "e",
                    "i" => "f",
                    "j" => "g",
                    "k" => "h",
                    "l" => "i",
                    "m" => "j",
                    "n" => "k",
                    "o" => "l",
                    "p" => "m",
                    "q" => "n",
                    "r" => "o",
                    "s" => "p",
                    "t" => "q",
                    "u" => "r",
                    "v" => "s",
                    "w" => "t",
                    "x" => "u",
                    "y" => "v",
                    "z" => "w",
                    " " => " ",
                    "A" => "X",
                    "B" => "Y",
                    "C" => "Z",
                    "D" => "A",
                    "E" => "B",
                    "F" => "C",
                    "G" => "D",
                    "H" => "E",
                    "I" => "F",
                    "J" => "G",
                    "K" => "H",
                    "L" => "I",
                    "M" => "J",
                    "N" => "K",
                    "O" => "L",
                    "P" => "M",
                    "Q" => "N",
                    "R" => "O",
                    "S" => "P",
                    "T" => "Q",
                    "U" => "R",
                    "V" => "S",
                    "W" => "T",
                    "X" => "U",
                    "Y" => "V",
                    "Z" => "W",}
  end

  def eng_to_cipher(words, num)
    array_of_words = words.split("")
    cipher_chars = array_of_words.map do |char|
    @dictionary[char]
    end
    cipher_chars.join
  end

  def from_file
    File.open("input.txt").each do |line|
    end
  end

  def cipher_to_eng(words)
    array_of_words = words.split("")
    eng_chars = array_of_words.map do |key, hash|
      @dictionary[]
    end
  eng_chars.join
  end

end
