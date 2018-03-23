# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the
# method. You may assume that the argument will always be an odd integer.

def diamond(int)
  stars = 1
  
  while stars < int
  spaces = (int - stars) / 2
  spaces.times {|y| print ' '}
  stars.times { |x| print '*'  }
  spaces.times {|y| print ' '}
  print "\n"
  
  stars += 2
  end
  
  while stars > 0
  spaces = (int - stars) / 2
  spaces.times {|y| print ' '}
  stars.times { |x| print '*'  }
  spaces.times {|y| print ' '}
  print "\n"
  
  stars -= 2
  end
  
end

diamond(9)