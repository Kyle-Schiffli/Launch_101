def string_to_integer(str)
array = []
str.each_byte {|x| array.push(x)}

result = (array.map {|x| x - 48})
value = 0
  result.each { |x| value = 10 * value + x }
value

end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570