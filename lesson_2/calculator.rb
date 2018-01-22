def prompt(message)
  puts "=> #{message}"
end

prompt "Welcome to the calculator!"

num1 = ""
Loop do 
prompt "What is your first number?"

num1 = gets.chomp

break if (num1.to_i)is.number?
end 
  
prompt "That is not a vaild number."
end


prompt "What is your second number?"

num2 = gets.chomp

what_operator = <<-MSG
What operation would you like to perform?
  1) Add
  2) Subtract
  3) Multiply
  4) Divide
  MSG

prompt what_operator
operation = gets.chomp

result = nil

case operation
when '1'
  result = num1.to_i + num2.to_i
when '2'
  result = num1.to_i - num2.to_i
when '3'
  result = num1.to_i * num2.to_i
when '4'
  result = num1.to_f / num2.to_f
end

prompt "The result is #{result}"
