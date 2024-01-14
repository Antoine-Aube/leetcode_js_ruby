string_1 = "string"
string_2 = "sing"
string_3 = "ings"
bad_string = "sang"

def is_subsequence(s, t)
  # don't need array's since we're just checking the length of the string
  # you could check first that s is not longer than t in which case it couldn't be a subsequence
  # something like
  #return false if s.length > t.length
  # s_arr = s.chars
  # t_arr = t.chars

  s_index = 0
  t_index = 0

  while s_index < s_arr.length && t_index < t_arr.length
    if t[t_index] == s[s_index]
      s_index += 1
    end
    t_index += 1
  end
    
  return s_index == s_arr.length

end

puts is_subsequence(string_2, string_1)