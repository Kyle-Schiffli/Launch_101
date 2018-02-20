# Write a method that takes an Array as an argument, and
# reverses its elements in place; that is, mutate the Array
# passed into this method. The return value should be
# the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) # => []
# list == []