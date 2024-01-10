nums = [1,1,1,1,1,4,4,4,7,7,7,7,3,8,9]
var majorityElement = (nums) => {
  accumulator = {};
  let element,
      max = 0;
   //forloop to accumulate the quantities in an object with key being the element and
   //value being the quantity of element
   //if the key does not exist, you create it in the object
   //else you increment the key by one if it's not hte first time it is encountered
   for (let i = 0; i < nums.length; i++){
    if (nums[i] === undefined) {
      console.log('Undefined element found at index:', i);
  }
       if(!accumulator[nums[i]]){
           accumulator[nums[i]] = 1;
       } else {
           accumulator[nums[i]]++
       }
   }
   console.log(accumulator)
   //you then iterate through the object, setting the max to the quantity that is the highest in the array
   //return the key in the object where setting element = to the value of that key in the object
   for (const i in accumulator) {
    console.log('Current key:', i, 'with count:', accumulator[i]);
       if (max < accumulator[i]) {
           max = accumulator[i];
           element = i
           console.log(element)
       }
   }

   return element
};

console.log(majorityElement(nums))