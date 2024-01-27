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

  numerals_arr.each_with_index do |numeral, index|
    current_int = pairs[numeral]

    if index > 0 && pairs[numerals_arr[index - 1]] < current_int
      integer += current_int - 2 * pairs[numerals_arr[index - 1]]
    else
      integer += current_int
    end
  end

  integer
end

s = "XXIV"

pp roman_to_int(s)