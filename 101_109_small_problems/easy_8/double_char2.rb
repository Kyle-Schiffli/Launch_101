# Write a method that takes a string, and returns a new
# string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation,
# and whitespace should not be doubled.
def double_consonants(str)
  array = str.chars
  result = []
  array.each do |x|
    if 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'.include?(x)
        result << x << x
    else
        result << x
    end
  end
  result.join

end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""