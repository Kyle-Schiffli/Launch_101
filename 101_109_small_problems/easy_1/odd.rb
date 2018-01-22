# Write a method that takes one integer argument,
# which may be positive, negative, or zero.
# This method return true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value

def is_odd?(integer)
  integer % 2 == 1
end

puts is_odd?(5)
puts is_odd?(6)
