# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers

# inputs - an array of ints
# method - get the sum of the numbers in the array, divide by number of values
# outputs - the average of the array

def average(array)
  sum = 0
  array.each { |x| sum += x }
  (sum / array.count).to_f
end

puts average([1, 5, 87, 45, 8, 8])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
