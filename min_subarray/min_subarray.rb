#if sum of the entire array = target, return the length of the nums
# of if any of the elements in the array = target return one
# ^ these might and probably should be taken care of within the algo
#only case that potentially needs to be handled before is if 
#sum of array < target

#potential solutions
#a counter, that as you iterate keeps track of the amount of numbers that you've iterated over

def min_sub_array_len(target, nums)
  start_i = 0
  sum = 0
  min_length = Float::INFINITY

  nums.each_with_index do |num, end_i|
    sum += num
    require 'pry';binding.pry
    while sum >= target
      require 'pry';binding.pry
      min_length = [min_length, end_i - start_i + 1].min
      sum -= nums[start_i]
      start_i += 1
    end
  end

  return min_length == Float::INFINITY ? 0 : min_length
end


# nums = [2,3,1,0,4,3,0,1,2,1,1,1,2,4]
nums = [2,3,1,2,4,3]
target = 7

puts min_sub_array_len(target, nums)