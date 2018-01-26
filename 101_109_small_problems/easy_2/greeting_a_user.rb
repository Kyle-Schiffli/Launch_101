# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

puts 'What is your name?'
name = gets.chomp
name_up = name.upcase
last = name.reverse.chr

if last == '!'
  puts "HELLO #{name_up}! WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
