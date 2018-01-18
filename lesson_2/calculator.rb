def prompt(message)
  puts ("=> #{message}")
end

prompt "Welcome to the calculator!"
prompt "What is your first number?"

num1 = gets.chomp

prompt "What is your second number?"

num2 = gets.chomp

whatOperator = <<-MSG
What operation would you like to perform?
  1) Add
  2) Subtract
  3) Multiply
  4) Divide
  MSG


prompt whatOperator

operation = gets.chomp

result = nil

case operation
  when '1'
    result = num1.to_i + num2.to_i 
  when '2'
    result = num1.to_i  - num2.to_i 
  when '3'
    result = num1.to_i  * num2.to_i 
  when '4'
    result = num1.to_f / num2.to_f
end

prompt "The result is #{result}" 