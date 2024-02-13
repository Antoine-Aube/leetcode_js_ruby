
#overall concern that if the shortest string starts at iundex 0, we won't get an accurate length
# example 2 - 0 = 2, but hte length of the string should be 3

#1
#Hash to track the index with the key and element with the value
#iterate over the hash to see teh longest distance between the keys until the value
#repeats
#for this, we would have to keep track of two keys and subtract between them to get our end value

#2
#have a starting index, increment with iterations
# utilize each_with_index and str.chars to make an array
#




def length_of_longest_substr(s)
  start_i = 0
  longest_str = 0
  chars_map = Hash.new

  s.chars.each_with_index do |char, index |
    if chars_map[char] && chars_map[char] >= start_i
      start_i = chars_map[char] + 1
    end

    chars_map[char] = index

    longest_str = [longest_str, index - start_i + 1].max
  end

  longest_str
end

puts 

str = "abcdabcbb"
str2 = "bbbbbbb"

puts length_of_longest_substr(str)
# puts length_of_longest_substr(str)