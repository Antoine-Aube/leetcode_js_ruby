#a character in a string has a corresponding character in the aplhabet that can be itself
#Shouldn't matter which one we check against the other, because will have corresponding characters

# create a hash table as you iterate through s-string with keys being character and values being
# corresponding charater at the same index in t-string

#Hash.new or {}
#each with index to iterate - use index to create the values with the index in t-string



def is_isomorphic(s, t)
  char_pairs = {}
  s_list = s.chars
  t_list = t.chars

  s_list.each_with_index do |char, index|
    if !char_pairs[char]  && !char_pairs.values.include?(t_list[index])
      char_pairs[char] = t_list[index]
    else
      if char_pairs[char] != t_list[index]
        return false
      end
    end
  end
  return true 
end

# s = "egg"
# # t = "add" #=>true 
# s = "foo" 
# t = "bar" #=> false
# s = "paper"
# t = "title" #=> true
s = "badc"
t = "baba" #=> false

puts is_isomorphic(s, t)