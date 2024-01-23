def word_pattern(pattern, s)
  words = s.split(" ")
  return false if words.length != pattern.length

  char_to_word = {}
  word_to_char = {}

  pattern.chars.each_with_index do | char, i |
      word = words[i]

      if char_to_word[char] && char_to_word[char] != word
          return false
      elsif word_to_char[word] && word_to_char[word] != char
          return false
      else
          char_to_word[char] = word
          word_to_char[word] = char
      end 
  end 
  return true
end

