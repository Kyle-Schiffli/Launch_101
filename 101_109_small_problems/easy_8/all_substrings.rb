# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the
# substring begins. This means that all substrings that start
# at position 0 should come first, then all substrings that
# start at position 1, and so on. Since multiple substrings
# will occur at each position, the substrings at a given position
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start
# method you wrote in the previous exercise:

def substrings_at_start(str)
  count = 1
  array = []
  while count <= str.size
    array.push(str.slice(0, count))
    count += 1
  end
array
end

def substrings(str)
  counter = 0
  str_copy = str
  array = []
  while counter < str.size
    array << str_copy
    str_copy = str_copy.reverse.chop.reverse
    counter += 1
  end
  
  result = array.map do |x|
    substrings_at_start(x)
    end
result.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]