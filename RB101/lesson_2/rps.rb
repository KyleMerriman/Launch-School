VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts("=> #{message}")
end

loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, the computer chose #{computer_choice}.")

  if (choice == "rock" && computer_choice == "scissors") ||
     (choice == "paper" && computer_choice == "rock") ||
     (choice == "scissors" && computer_choice == "paper")
    prompt("You win!")
  elsif (choice == "rock" && computer_choice == "paper") ||
        (choice == "paper" && computer_choice == "scissors") ||
        (choice == "scissors" && computer_choice == "rock")
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end

  prompt("Play again?")
  answer.gets.chomp
  break if answer.downcase == start_with?("n")
end
