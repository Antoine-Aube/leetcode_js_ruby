#make a hash with index as keys and vowels as values
# Need an array with all vowels to reference to make this hash

#iterated through the string and use the indexes of the hash to essentially
#make the keys an array
#make the values and array
#reverse the keys array
#potentially use a range to associate the value of the keys array 

def reverse_vowels(s)
  pairs = generate_index_vowel_pairs(s)
  indeces = pairs.keys.reverse
  chars = pairs.values
  string_arr = s.split("")

  (0..indeces.length - 1).each do | index |
    string_arr[indeces[index]] = chars[index]
  end
  
  string_arr.join
end

def generate_index_vowel_pairs(s)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  pairs = {}
  s.chars.each_with_index  do | char, index |
    if vowels.include?(char)
      pairs[index] = char
    end
  end
  pairs
end


s = "hello"

pp generate_index_vowel_pairs(s)
pp reverse_vowels(s)