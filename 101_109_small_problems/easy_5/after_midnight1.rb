# The time of day can be represented as the number
# of minutes before or after midnight. If the number
# of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based
# format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

def time_of_day(int)
  one_day = 1440
  time = one_day + int
  hours = time / 60 % 24
  mins = time % 60
  hours_str = ''
  mins_str = ''
  if hours < 10 
    hours_str = (hours.to_s).prepend('0')
  else
    hours_str = hours.to_s
  end
  
  if mins < 10 
    mins_str = (mins.to_s).prepend('0')
  else
    mins_str = mins.to_s
  end
  
"#{hours_str}:#{mins_str}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"