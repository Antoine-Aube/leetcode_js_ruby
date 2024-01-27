def roman_to_int(s)
  pairs = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }

  numerals_arr = s.chars
  integer = 0
  counter = 1
  integer += pairs[numerals_arr[0]]

 while counter <= numerals_arr.length - 1
  current_int = pairs[numerals_arr[counter]]
  integer += current_int
  previous_int = pairs[numerals_arr[counter - 1]]
  
  if previous_int < current_int

    integer -= (previous_int + previous_int)
  end

  counter += 1
  end
  integer
end

s = "XXIV"

pp roman_to_int(s)