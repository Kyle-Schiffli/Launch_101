# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

array = []
puts '==> Enter the 1st number:'
array.push(gets.chomp)
puts '==> Enter the 2nd number:'
array.push(gets.chomp)
puts '==> Enter the 3rd number:'
array.push(gets.chomp)
puts '==> Enter the 4th number:'
array.push(gets.chomp)
puts '==> Enter the 5th number:'
array.push(gets.chomp)
puts '==> Enter the last number:'
last_num = gets.chomp
if array.include?(last_num)
  puts "The number #{last_num} appears in #{array}."
else
  puts "The number #{last_num} does not appears in #{array}."
end
