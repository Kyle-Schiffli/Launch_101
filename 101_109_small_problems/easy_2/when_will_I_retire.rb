# Build a program that displays when the user will retire
# and how many years she has to work till retirement.

puts 'What is your age?'
age = gets.chomp

puts 'At what age would you like to retire?'
retire = gets.chomp

diff = (retire.to_i - age.to_i)
current = Time.now.year
retire_year = current.to_i + diff

puts "It's 2018. You will retire in #{retire_year}."
puts "You have only #{diff} years of work to go!"
