# Write a method that takes a string as an
# argument and returns a new string in which
# every uppercase letter is replaced by its
# lowercase version, and every lowercase letter
# by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(str)
  letters = str.split("")
  test = []
  letters.each do |x| 
      if x == x.upcase
       test.push(x.downcase)
      else test.push(x.upcase)
      end
  end
     
test.join("")
    
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'