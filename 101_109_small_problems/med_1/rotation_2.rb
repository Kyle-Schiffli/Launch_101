# Write a method that can rotate the last n
# digits of a number. For example:

def rotate_array(array)
  result = []
  array.each_with_index do |value, index|
    result.push(value) if index > 0
  end
  result.push(array[0])
  result
end

def rotate_rightmost_digits(num, digit)
  result = []
  result.push(num.to_s.split("").slice(0..(-digit - 1)))
  result.push(rotate_array(num.to_s.split("").slice(-digit..-1)))
  result.flatten.join().to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917