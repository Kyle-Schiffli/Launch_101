# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

#array = Array(1..100)

#array.each do |num|
#  if num.odd?
#    puts num
#  end
#end

1.upto(100) {|num| puts num if num.odd? }