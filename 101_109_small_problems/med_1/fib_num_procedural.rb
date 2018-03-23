# Rewrite your recursive fibonacci method so that
# it computes its results without recursion.

def fibonacci(nth)
  array = [1,1]
  index = 2
  while index <= nth
  array[index] = array[index - 2] + array[index - 1]
  index += 1
end
  array[nth - 1]
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075