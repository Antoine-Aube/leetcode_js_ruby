let maxProfit = (prices) => {
  if (prices.length <= 1) {
    return 0;
  }
  let best_day = 0;
  let minPrice = prices[0];
  for (let i = 1; i < prices.length - 1; i++) {
    difference = prices[i] - minPrice;
    console.log("future price:", prices[i]);
    console.log("currentminprice:", minPrice);
    console.log("Difference:", difference);
    if (difference > best_day) {
      best_day = difference;
    }
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    }
  }

  if (best_day < 0) {
    return 0;
  } else {
    return best_day;
  }
};
const prices = [7, 1, 5, 3, 6, 4];
// const prices = [7,6,4,3,1]

console.log(maxProfit(prices));
