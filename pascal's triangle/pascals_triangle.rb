def generate(num_rows)
  triangle = Array.new

  if num_rows == 1
    triangle[0] = [1]
    return triangle
  end

  triangle[0], triangle[1] = [1], [1, 1]

  (1..num_rows - 2).each do | num |
    current_row = []
    prev_row = triangle[num]
    (1..num).each do | i |
      current_row[i] = (prev_row[i - 1] + prev_row[i])
    end
    current_row[0] = 1
    current_row.push(1)
    triangle.push(current_row)
  end

  triangle
end

#alternate_solution, a bit cleaner 

# def generate(num_rows)
# triangle = []

# (0...num_rows).each do |row_index|
#   row = Array.new(row_index + 1)
#   row[0], row[-1] = 1, 1  # First and last element of each row are always 1.

#   # Calculate middle elements
#   (1...row_index).each do |i|
#     row[i] = triangle[row_index - 1][i - 1] + triangle[row_index - 1][i]
#   end

#   triangle << row
# end

# triangle
# end





rows = 5
pp generate(rows)