# inputs needed
# -the loan amount
# -the Annual Percentage Rate (APR)
# -the loan duration

# things to calculate
# -monthly interest rate
# -loan duration in months

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def prompt(message)
  puts "=> " + message
end

prompt("Hello! Welcome to the Mortgagte Loan Calculator")

loop do

prompt("What is your loan amount?")

p = ''
loop do 
  p = gets.chomp
  if p.empty? || p.to_f < 0
    prompt("Must enter a positive number.")
  else
    p = p.to_f
    break
  end
end
  
prompt("What is your annual interst rate? (Please enter decimal value)")

annual = ''
loop do 
  annual = gets.chomp
  if annual.empty? || annual.to_f < 0
    prompt("Must enter a positive number.")
  else
    annual = annual.to_f
    break
  end
end
j = annual / 12

prompt("What is your loan duration? (In months)")

n = ''
loop do 
  n = gets.chomp
  if n.empty? || n.to_f < 0
    prompt("Must enter a positive number.")
  else
    n = n.to_f
    break
  end
end

def formula(p, n, j)
  p * (j / (1 - (1 + j)**-n))
end

m = formula(p, n, j).round(2)

prompt("Your monthly payment is #{m}")

prompt("Would you like to do another calculation? (Enter Y)")

answer = gets.chomp.downcase

break unless answer == 'y'


end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
