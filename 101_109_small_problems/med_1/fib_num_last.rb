# In this exercise, you are going to compute a method
# that returns the last digit of the nth Fibonacci number.

def fibonacci(nth)
  array = [1,1]
  index = 2
  while index <= nth
  array[index] = array[index - 2] + array[index - 1]
  index += 1
end
  array[nth - 1]
end

def fibonacci_last(num)
  fibonacci(num).to_s.reverse.chr.to_i
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765) 
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4