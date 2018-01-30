def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if (player == 'rock' && computer == "scissors") ||
    (player == 'scissors' && computer == "paper") ||
    (player == 'paper' && computer == "rock") 
    prompt('You Win!')
    
  elsif (player == 'rock' && computer == "paper") ||
    (player == 'scissors' && computer == "rock") ||
    (player == 'paper' && computer == "scissors") 
    prompt('You Lose!')
  
  else prompt('You Tie!')
  end
end

VALID_CHOICES = ['rock', 'paper', 'scissors']

choice = ''


loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')} ")
  choice = gets.chomp

  if VALID_CHOICES.include?(choice)
    break
   else
    prompt("That's not a vaild choice")
  end
end

computer_choice = VALID_CHOICES.sample

prompt("You choose #{choice}, computer choose #{computer_choice}")

display_results(choice,computer_choice)



