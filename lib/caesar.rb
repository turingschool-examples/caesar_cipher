class Caesar

  attr_reader :message,
              :rotation

  def initialize
  end

  def eng_to_cipher(message, rotation)
    @message = message
    @rotation = rotation * -1
    coded_message
  end

  def individual_characters
    @message.chars
  end

  def key
    Hash[alphabet.zip(alphabet.rotate(@rotation))]
  end

  def alphabet
    ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
     'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
     'w', 'x', 'y', 'z']
  end

  def coded_message
    coded = individual_characters.map {|charc| key.fetch(charc, ' ')}
    coded.join
  end
end
