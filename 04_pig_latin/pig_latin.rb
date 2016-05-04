def translate(sentence)
array = sentence.split
array.map! { |word| action(word) }
array.join(" ")
end

def logic(word)
vovels = %w{a e i o u}
  if vovels.include?(word[0].downcase)
    "#{word}ay"
  else
    vovels.include?(word[1].downcase) ? "#{word[1..-1]}#{word[0]}ay" : "#{word[2..-1]}#{word[0..1]}ay" 
  end
end

def action(word)
  vovels = %w{a e i o u A E I O U}
  index = 0
  new_word = ""
  until vovels.include?(word[index]) 
    new_word = "#{new_word}#{word[index]}"
    index +=1
  end
  if (new_word[-1] == 'q' || new_word[-1] == 'Q') && word[index] ==  'u'
    new_word = "#{new_word}u" 
    index +=1
  end
  new_word = "#{capitalize(word, word[index..-1])}#{new_word.downcase}ay"
end

def capitalize(word_before, word_after)
  if word_before.capitalize == word_before
    word_after.downcase!
    word_after.capitalize  
  else
    word_after
  end
end
