s = "rat"
t= "tar"

def is_anagram(s, t)
  if s.size != t.size
      return false
  end
  #hash tables
  s_table = Hash.new(0)
  t_table = Hash.new(0)

  #arrays
  s_arr = s.split("")
  t_arr = t.split("")

  s_arr.each do | char |
      s_table[char] += 1
  end 
end
