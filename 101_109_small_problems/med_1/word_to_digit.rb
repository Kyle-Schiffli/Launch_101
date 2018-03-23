# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
# 'eight', 'nine' converted to a string of digits.


def replace(word)
  case word
    when "zero" 
      '0'
    when "one" 
      '1'
    when "two" 
      '2'
    when "three"
      '3'
    when "four" 
      '4'
    when "five" 
      '5'
    when "six" 
     '6'
    when "seven"
      '7'
    when "eight"
      '8'
    when "nine" 
     '9'
    else
      word
    end
end


def word_to_digit(str)
  array = str.split(" ")
  replaced = array.map do |word|
    if word.reverse.chr == '.'
      replace(word.chop) << "."
    else
      replace(word)
    end
  end
 
replaced.join(" ")
 
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
