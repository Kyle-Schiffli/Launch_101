# Write a method that takes a string,
# and returns a new string in which every character is doubled.

def repeater(str)
  array = str.chars
  array.zip(array).flatten.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''