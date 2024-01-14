strs = ["word", "words", "wordles"]

def longest_common_prefix(strs)
  longest_el = strs.min_by(&:length)
end

puts longest_common_prefix(strs)

def longest_common_prefix(strs)
  prefix = strs.min_by(&:length)
  
   strs.each do | str |
       while str.index(prefix) != 0
           prefix = prefix[0...-1]
           return "" if prefix.empty?
       end 
   end 
  prefix  
end