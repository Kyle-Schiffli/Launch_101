# Write a method that takes one argument, a string containing
# one or more words, and returns the given string with all five
# or more letter words reversed. Each string will consist of only
# letters and spaces. Spaces should be included only
# when more than one word is present.

# input = string containting 0ne or more words

# outputs - string with words >4 letters reversed

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  new_string = string.split.each do |word|
    if word.size > 4   #next time use single line
      word.reverse!
    end
  end
  new_string.join(' ')
end

puts reverse_words('Walk around the block')
