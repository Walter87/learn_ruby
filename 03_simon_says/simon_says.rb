def echo(word)
  "#{word}"
end

def shout(word)
  "#{word.upcase}"
end

def repeat(word,times = 2)
  ("#{word} "*times)[0..-2]
end

def start_of_word(word, letters)
  word[0..letters-1]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  stop_words = %w{a an and or the for in of nor over}
  array = sentence.split
  array.map! { |x| stop_words.include?(x) && array.index(x) != 0 ? x : x.capitalize }.join(" ")
end
