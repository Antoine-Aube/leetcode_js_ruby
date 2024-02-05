def contains_nearby_duplicate(nums, k)
  nums_map = Hash.new

  nums.each_with_index do |num, index|
    # require 'pry';binding.pry
    if nums_map[num] && (nums_map[num] - index).abs <= k 
      return true
    end
    nums_map[num] = index
  end 
  return false
end

nums = [1,2,3,1,2,3]
k = 2
puts contains_nearby_duplicate(nums, k)