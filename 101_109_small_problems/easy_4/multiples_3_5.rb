# Write a method that searches for all multiples of 3 or 5
# that lie between 1 and some other number, and then
# computes the sum of those multiples. For instance,
# if the supplied number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(num)
list = Array(1..num)
result = []
list.each do |x|
  if x % 3 == 0 || x % 5 == 0
    result.push(x)
  end
end
result.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

