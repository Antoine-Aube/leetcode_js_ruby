def can_jump(nums)
  goal = n = nums.length -1
  
  n.downto(0).each do |i|
    # we are looping from last to first index
    # we are tracking the goal which is our last element
    # if the 2nd last can have the power to reach last we will change the goal to 2nd last
    # and the loop will go this way and we will continue to check till index 0
    # if our goal == 0 then we know that we can jump till the last element from first
    if i + nums[i] >= goal
      goal = i
    end
  end
  goal == 0
end