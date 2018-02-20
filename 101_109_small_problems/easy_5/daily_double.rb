# Write a method that takes a string argument and
# returns a new string that contains the value of
# the original string with all consecutive duplicate
# characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!

def crunch(str)
array = str.split("")
result = []
array.each_with_index do |letter, index|
  if index == 0
    result.push(letter)
  elsif letter.include?(array[index - 1])
    next
  else result.push(letter)
  end
end
result.join
end


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''