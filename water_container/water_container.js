

const maxArea = (height) => {
  let maxWater = 0;
  let indexA = 0
  let indexB = height.length - 1

  while ( indexB > indexA ) {
      let calc = ((indexB - indexA) * Math.min(height[indexA], height[indexB]));
      if (calc > maxWater) {
          maxWater = calc
      }
      console.log('calc:', calc);
      console.log('maxWater:', maxWater);
      console.log('A:', height[indexA]);
      console.log('B:', height[indexB]);
      
      if ( height[indexA] < height[indexB]) {
          indexA++
      } else {
          indexB--
      };

    }
    return maxWater
};

height = [1,8,6,2,5,4,8,3,7] 
console.log(maxArea(height));
