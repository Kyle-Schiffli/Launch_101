# Write a method that takes a positive integer,
# n, as an argument, and displays a right triangle whose
# sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one
# end at the lower-left of the triangle, and the other end
# at the upper-right.

def triangle(int)
  spaces = int - 1
  num = 1
  while num <= int
  spaces.times { |x| print " " }
  num.times { |x| print "*" }
  print "\n\n"
  
  num += 1
  spaces -= 1
  end
  
end

triangle(5)
triangle(9)