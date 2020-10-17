# frozen_string_literal: true

# 2.4.1
def word_counter(text, dictionnary)
  hash = {}
  dictionnary.map do |word|
    hash[word] = text.downcase.scan(word).count if text.downcase.include?(word) == true
  end
  puts hash
end

# 2.4.2.A
shakespeare = File.read('Shakespeare.txt')
dictionnary2 = %w[the of and to a in for is on that by this with i you it not or be are]

word_counter(shakespeare, dictionnary2)

# 2.4.2.B
gros_mots = File.read('gros_mots.txt').split(' ')

word_counter(shakespeare, gros_mots)
