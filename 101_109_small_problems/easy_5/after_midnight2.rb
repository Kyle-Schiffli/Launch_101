# As seen in the previous exercise, the time of day
# can be represented as the number of minutes before
# or after midnight. If the number of minutes is positive,
# the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.
HTOM = 60
MINS_IN_DAY = 24 * 60

def after_midnight(time)
hours = time[0..1].to_i
mins = time[3..4].to_i
hours = 0 if hours == 24

total = (hours * HTOM) + mins
end

def before_midnight(time)
hours = time[0..1].to_i
mins = time[3..4].to_i

return mins if hours == 0

total = MINS_IN_DAY - (((hours * HTOM) + mins))
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0