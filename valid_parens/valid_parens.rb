# define variables that correspond with pairs of bracket
#turn the string into an array
#iterate of the array, but only checking every other index
#at the intial index so lets say checking 0, 2, 4, 6
#checking that the current value + the next value so current i + 1 
# equal one of the variables that we ahve defined

#other option rather than interating, which it's sitll iterating
# create a stack, pop off elements and check that the element that is popped off, 
#couple with it's index predececssor
#also equals one of the defined variables

def is_valid(s)
  bracket_pairs = {
    ')' => '(',
    '}' => '{',
    ']' => '['
  }
  
  stack = []

  s.each_char do | char |
    if bracket_pairs.values.include?(char)
      stack.push(char)
    elsif bracket_pairs[char] == stack.last
      stack.pop
    else 
      return false
    end
  end   

return stack.empty?
    
end


s_1 = "(){}[]"
s_2 = "(){}[}"
s_3 = "({[]})"
stack = []


puts (is_valid(s_1))
puts (is_valid(s_2))
puts (is_valid(s_3))