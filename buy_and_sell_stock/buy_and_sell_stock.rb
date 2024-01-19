def max_profit(prices)
  if prices.length <= 1
      return 0
  end
  max_profit = 0
  lowest_stock = prices[0]
  prices.each do | price |
    # require 'pry';binding.pry
      difference = price - lowest_stock
      if difference > max_profit
          max_profit = difference
      end
      if price < lowest_stock
          lowest_stock = price
      end
   end
  return max_profit
end

prices = [7,1,5,3,6,4]

puts max_profit(prices)