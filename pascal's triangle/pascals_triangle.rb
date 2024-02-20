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



rows = 5
pp generate(rows)