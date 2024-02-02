def remove_element(nums, val)
  k = 0 
  nums.each do |num|
    if num != val
      nums[k] = num
      k += 1
    end 
    require 'pry';binding.pry
  end
  return k
end

#alternate solution
# def remove_element(nums, val)
#   k = nums.reject! { | x | x == val }.count
# end

nums = [1,2,3,2,3,4,2,0]

val = 2


puts remove_element(nums, val)
