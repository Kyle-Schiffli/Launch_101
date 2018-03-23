# Write a method that takes a string as argument,
# and returns true if all parentheses in the string are
# properly balanced, false otherwise. To be properly balanced,
# parentheses must occur in matching '(' and ')' pairs.

def balanced?(str)


only = []
array = str.split("")
array.map do |x|
  if x == '(' || x == ')'
    only.push(x)
  end
end

size = only.join.size


 
print size
print only.join
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false