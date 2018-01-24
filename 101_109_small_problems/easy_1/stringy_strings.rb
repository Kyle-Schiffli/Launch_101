# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# input - one positive int
# method - print string of alternating numbers
#     print "10" times int / 2
#     if odd, add 1 to end

# output - a string of alternatining 1 and 0 the length of the input.

def stringy(int)
  digit = '10'
  result = digit * (int / 2)
  if int.odd? then result += '1' end
  result
end

puts stringy(7)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
