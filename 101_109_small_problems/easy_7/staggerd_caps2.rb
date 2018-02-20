# Modify the method from the previous exercise
# so it ignores non-alphabetic characters when
# determining whether it should uppercase or
# lowercase each letter. The non-alphabetic characters
# should still be included in the return value;
# they just don't count when toggling the desired case.

def staggered_case(str)
array = str.split("")
need_upper = true
result = []
array.each do |char|
  if  char.match(/[a-zA-Z]/) && need_upper == true
    result.push(char.upcase)
    need_upper = !need_upper
  elsif  char.match(/[a-zA-Z]/)
    result.push(char.downcase)
    need_upper = !need_upper
  else result.push(char) 
  end
  
end
result.join("")
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'