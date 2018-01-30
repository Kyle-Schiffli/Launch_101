# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

puts '==> Enter the first number:'
first_num = gets.chomp.to_i
puts '==> Enter the second number:'
sec_num = gets.chomp.to_i

add = first_num + sec_num
sub = first_num - sec_num
product = first_num * sec_num
quotient = first_num / sec_num
remainder = first_num % sec_num
power = first_num**sec_num

puts "==> #{first_num} + #{sec_num} = #{add}"
puts "==> #{first_num} - #{sec_num} = #{sub}"
puts "==> #{first_num} * #{sec_num} = #{product}"
puts "==> #{first_num} / #{sec_num} = #{quotient}"
puts "==> #{first_num} % #{sec_num} = #{remainder}"
puts "==> #{first_num} ** #{sec_num} = #{power}"
