# frozen_string_literal: true

def caesar_cipher(text, x)
  encrypt = []
  words = text.split('')

  words.each do |letter|
    encrypt << if letter.count('a-zA-Z').positive?
                 if (letter.ord) < 90 && letter.ord + x > 90 || (letter.ord) < 122 && letter.ord + x > 122
                   ((letter.ord + x) - 26).chr
                 else
                   (letter.ord + x).chr
                 end
               else
                 letter
               end
  end

  encrypt.join
end
