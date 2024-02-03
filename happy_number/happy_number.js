let sumOfSquares = (n) => {
  sum = 0;

  while (n > 0) {
    digit = n % 10;
    sum += digit ** 2;
    n = Math.floor(n / 10);
  }
  return sum;
};

console.log(sumOfSquares(19));

let isHappy = (n) => {};
