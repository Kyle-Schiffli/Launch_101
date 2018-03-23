def toggle(str)
  if str == "on"
    "off"
  else
    "on"
  end
end

def result(array)
  result = []
  array.each_with_index do |value, index|
    if value == "on"
      result.push(index + 1)
    end
  end
  result
end

def light_switch(int)
  array = Array(1..int).map do |x| x.to_s
  toggle(x)
  end
  count = 2
  
  while count <= int
  
  array.each_with_index do |value, index|
    if (index + 1) % count == 0
      array[index] = toggle(value)
    end
  end
  
  count += 1
  end
  
  print result(array)
end



light_switch(1000)