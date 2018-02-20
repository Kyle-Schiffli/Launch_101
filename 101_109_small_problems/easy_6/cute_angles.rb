DEGREE = "\xC2\xB0"

def dms(num)

degree = num.to_i
minutes = (num % 1 * 60)
seconds = (minutes % 1 * 60)

"#{"%02d" % degree}#{DEGREE}#{"%02d" % minutes.to_i}\'#{"%02d" % seconds.to_i}\""

end 

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")