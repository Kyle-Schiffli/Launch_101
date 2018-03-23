
def letter_percentages(str)
  lowercase = str.gsub(/[a-z]/, 'a').count('a').to_f
  uppercase = str.gsub(/[A-Z]/, 'A').count('A').to_f
  other = str.gsub(/[a-zA-Z]/, 'a').delete('a').size.to_f
  total = str.size.to_f
  l = ((lowercase / total) * 100 )
  u = ((uppercase / total) * 100)
  n = ((other / total)  * 100)
  hash = { 'lowercase': l, 'uppercase': u,
  'neither': n}
   hash
end


puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }