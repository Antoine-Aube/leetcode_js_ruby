const canJump = (nums) => {
  const n = nums.length;
  let goal = n - 1;

  for (let i = n - 1; i >= 0; i--) {
    //you fucked up the operator comparison - if the index + the current number is the same as the goal
    // you can still get to the same one, it does NOT need to be greater
    if (i + nums[i] >= goal) {
      goal = i;
    }
  }
  return goal === 0;
};

nums = [1, 2, 3, 4];
console.log(canJump(nums));
