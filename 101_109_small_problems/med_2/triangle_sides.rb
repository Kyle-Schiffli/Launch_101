# Write a method that takes the lengths of the 3 sides of a triangle
# as arguments, and returns a symbol :equilateral, :isosceles, :scalene,
# or :invalid depending on whether the triangle is equilateral,
# isosceles, scalene, or invalid.

def equilateral(arr)
  arr.each do |side|
    return false if side != arr[1]
  end
  true
end

def invalid(arr)
arr.each do |side|
return true if side <= 0 
sorted = arr.sort
return true if (sorted[0] + sorted[1]) < sorted[2]

false
end

sorted = arr.sort
false if sorted[-1] < (sorted[0] + sorted[1])
end

def isosceles(arr)
  sorted = arr.sort
  if sorted[0] == sorted[1] || sorted[1] == sorted[2]
    return true
  else
    return false
  end
end

def scalene(arr)
  return true if arr == arr.uniq
  false
end


def triangle(side_a, side_b, side_c)
array = [side_a, side_b, side_c]

return :invalid if invalid(array)
return :equilateral if equilateral(array)
return :isosceles if isosceles(array)
return :scalene if scalene(array)

end


puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid