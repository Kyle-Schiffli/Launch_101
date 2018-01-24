# Write a method that takes one argument,
# a positive integer, and returns the sum of its digits.

# input - int
# method - split string, covert to int, add
# output - sum of digits

def sum(int)
  result = int.to_s.split('')
  total = result.map(&:to_i)
  total.reduce(:+)
end

puts sum(23)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
