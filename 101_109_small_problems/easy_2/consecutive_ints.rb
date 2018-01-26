# Write a program that asks the user to enter an integer greater
# than 0, then asks if the user wants to determine the sum
# or product of all numbers between 1 and the entered integer.

puts '>> Please enter an integer greater than 0:'
int = gets.chomp.to_i
array = Array(1..int)
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp
if answer == 's'
  result = array.reduce(:+)
  puts "The sum of the integers between 1 and #{int} is #{result}."
else
  result = array.reduce(:*)
  puts "The product of the integers between 1 and #{int} is #{result}."
end
