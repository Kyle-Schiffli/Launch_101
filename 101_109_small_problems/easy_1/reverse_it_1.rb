# Write a method that takes one argument, a string, and
# returns the same string with the words in reverse order

# puts reverse_sentence('Hello World') == 'World Hello'

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')
