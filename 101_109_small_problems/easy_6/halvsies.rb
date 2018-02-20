# Write a method that takes an Array as an argument,
# and returns two Arrays that contain the first half
# and second half of the original Array, respectively.
# If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

def halvsies(array)
  middle = (array.size) / 2
  middle += 1 if array.size % 2 == 1
  half1 = array.slice (0..middle - 1)
  half2 = array.slice (middle..array.size)
  [half1, half2]
  
  
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]