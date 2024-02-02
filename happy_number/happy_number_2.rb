def sum_of_squares(n)
  sum = 0
  while n > 0
    digit = n % 10
    sum += digit * digit
    n /= 10
  end
  sum
end

def is_happy(n)
  seen = {} # Use a hash set to track seen numbers

  while n != 1 && !seen[n]
    seen[n] = true # Mark the current number as seen
    n = sum_of_squares(n) # Calculate the sum of the squares of digits
  end

  n == 1 # Return true if n is 1 (happy), false if a cycle was detected
end