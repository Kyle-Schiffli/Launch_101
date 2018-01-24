# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# example Teddy is 69 years old!


age = rand(20..200)

puts "What is your name?"
name = gets.chomp

puts "#{name} is #{age} years old!"
