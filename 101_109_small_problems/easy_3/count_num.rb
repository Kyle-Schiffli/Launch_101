# Write a program that will ask a user for an input
# of a word or multiple words and give back the number
# of characters. Spaces should not be counted as a character.

puts 'Please write word or multiple words:'
string = gets.chomp
no_space = string.split(' ').join
number = no_space.length

puts "There are #{number} characters in #{string}."
