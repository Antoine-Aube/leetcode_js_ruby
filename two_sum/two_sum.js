const two_sum = (nums, target) => {
  let map = {};

  for (let i = 0; i < nums.length; i++) {
    let dif = target - nums[i];
    if (dif in map) {
      return [map[dif], i];
    }
    map[nums[i]] = i;
  }
};

nums = [1, 3, 2];

console.log(two_sum(nums, 5));
