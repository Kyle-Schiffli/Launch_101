# write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy,
# false otherwise.

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end



def xor?(arg1, arg2)
  if arg1
    if arg2
      false
    else
      true
    end
  else
if arg2
      true
    else
      false
    end
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false