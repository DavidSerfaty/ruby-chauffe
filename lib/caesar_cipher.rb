def caesar_cipher(text, x)

  encrypt = Array.new
  words = text.split('')

  words.each do |letter|
    if letter.count("a-zA-Z") > 0
      if (letter.ord) < 90 && (letter.ord)+x > 90 || (letter.ord) < 122 && (letter.ord)+x > 122
        encrypt << ((letter.ord + x) - 26 ).chr
      else
        encrypt << (letter.ord + x).chr
      end
    else
      encrypt << letter
    end
  end

  return encrypt.join

end
