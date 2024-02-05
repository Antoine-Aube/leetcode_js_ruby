def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    dif = target - num
    if hash.has_key?(dif)
      return [hash[dif], index]
    end
    hash[num] = index
  end
end