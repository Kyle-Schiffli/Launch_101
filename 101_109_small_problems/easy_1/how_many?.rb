# Write a method that counts the number
# of occurrences of each element
# in a given array.Once counted, 
# print each element alongside the number of occurrences.

def count_occurrences(vehicles)
  vehicles_lower = vehicles.map { |x| x.downcase }
  types = vehicles_lower.uniq
  count = types.map{ |x| vehicles_lower.count(x) }
  
  types.each_index do |x| 
    print types[x], " => ", count[x], "\n"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)