def find_fibonacci_index_by_length(digits)

fib = [1, 1]
  index = 1
  loop do 
    index +=1
    
    fib[index] = fib[index - 2] + fib[index - 1]
    
    if (fib[index]).to_s.size == digits
      break
    end
  end
  index + 1
end


puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847