# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

#puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#puts digit_list(7) == [7]                     # => true

def digit_list(int)
  arr = int.to_s.split('')
  arr2 = []
  arr.each { |x| arr2.push(x.to_i) } 
  arr2
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
