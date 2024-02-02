

#take input, turn into array
#iterate over array by squaring each element and adding to a new_num
#use recursion to repeat process until out new number = 1


def is_happy(n, seen = {})
  new_num = n.digits.sum {|digit| digit**2}

  return true if new_num == 1
  return false if seen[new_num]

  seen[new_num] = true
  is_happy(new_num, seen)
end


happy = 19
sad = 2

puts is_happy(sad)