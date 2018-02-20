def substrings_at_start(str)
  count = 1
  array = []
  while count <= str.size
    array.push(str.slice(0, count))
    count += 1
  end
array
end

def substrings(str)
  counter = 0
  str_copy = str
  array = []
  while counter < str.size
    array << str_copy
    str_copy = str_copy.reverse.chop.reverse
    counter += 1
  end
  
  result = array.map do |x|
    substrings_at_start(x)
    end
result.flatten
end

def palindromes(str)
  array = substrings(str)
  result = []
  array.each do |x|
    if x == x.reverse && x.size > 1
      result << x
    end
  end
  result
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]