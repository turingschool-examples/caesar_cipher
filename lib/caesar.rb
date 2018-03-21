
require 'pry'
class Caesar
  attr_reader :text, :number

   def initialize(text, number)
     @text = text
     @number = number
   end

  def eng_to_cipher(text, number)
   @number.to_i
   @text.to_s
   alphabet = ('a'..'z').to_a
   key = Hash[alphabet.zip(alphabet.rotate(@number))]
   @text.split do |key, letter| letter + key
   end


end
