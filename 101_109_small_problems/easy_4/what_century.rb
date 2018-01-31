# Write a method that takes a year as input and returns
# the century. The return value should be a string that begins
# with the century number, and ends with st, nd, rd, or th as
# appropriate for that number.

# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century.

def century(year)
start = (year / 100) + 1
start_end = start.to_s.reverse.slice(0, 2).reverse
remainder = year % 100
if remainder == 0
  start -= 1
end

last = start.to_s.reverse.chr
suffix = ''

  
case last
  when  '1'
    suffix = 'st'
  when  '2'
    suffix = 'nd'
  when  '3'
    suffix = 'rd'
  else 
    suffix = 'th'
end

case start_end
  when '11','12','13'
    suffix = 'th'
end

start.to_s + suffix 
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'