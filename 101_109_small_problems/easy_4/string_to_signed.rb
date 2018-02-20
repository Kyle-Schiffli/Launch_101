def string_to_signed_integer(str)
array = []
str.each_byte {|x| array.push(x)}
first = 1
result = (array.map do |x|
   if x == 45
    first = -1
    x - 45
  elsif x == 43
    first = 1
    x - 43
  else
    x - 48 
  end
end)
value = 0
  result.each { |x| value = 10 * value + x }
value * first
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
