def max_area(heights) 
  i_a = 0
  i_b = heights.length - 1
  max_water = 0

  while i_b > i_a
    max_water_calc = ((i_b) - i_a) * ([heights[i_a], heights[i_b]].min)
    # require 'pry';binding.pry
    if max_water_calc > max_water
      max_water = max_water_calc
    end

    if heights[i_a] < heights[i_b]
      i_a += 1
    else
      i_b -= 1
    end

  end

  return max_water
end


height = [1,8,6,2,5,4,8,3,7]

puts max_area(height)

height = [1, 14, 6, 7, 8, 10, 9, 6, 1, 3, 4]

puts max_area(height)

height = [1, 14, 6, 7, 8, 10, 9, 6, 1, 3, 56]

puts max_area(height)