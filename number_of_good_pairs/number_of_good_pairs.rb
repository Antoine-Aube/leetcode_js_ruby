def num_identical_pairs(nums)
  good_pairs = 0
  num_counts = {}

  nums.each do | num |
    if !num_counts[num]
      num_counts[num] = nums.count(num)
    end
  end
  num_counts.values.each do | value |
    # require 'pry';binding.pry
    if value > 1
      #the first item of the pair can be any one of the value appeareances
      #the 
      good_pairs += (value * (value - 1) / 2)
    end
  end
  good_pairs
end

#alternate soltution

# def num_identical_pairs(nums)
#   good_pairs = 0
#   num_counts = {}

#   nums.each do |num|
#     # If the number has been seen before, its presence means we've found
#     # (num_counts[num]) additional pairs.
#     require 'pry';binding.pry
#     if num_counts[num]
#       good_pairs += num_counts[num]
#       num_counts[num] += 1
#     else
#       num_counts[num] = 1
#     end
#   end

#   good_pairs
# end

# nums = [1,2,3,1,1,3] #=> 4
nums = [1,1,1,1] #=> 6
# nums = [1,2,3] #=> 0

puts num_identical_pairs(nums)