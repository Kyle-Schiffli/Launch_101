# Write a method that combines two Arrays passed in as
# arguments, and returns a new Array that contains all
# elements from both Array arguments, with the elements
# taken in alternation.

# You may assume that both input Arrays
# are non-empty, and that they have the
# same number of elements.

def interleave(array1, array2)
 
array1.zip(array2).flatten
 
 # result = []
 # array1.each_with_index{ |value, index|
 #   result.push(array1[index], array2[index])
 #  }
  
  #result
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']