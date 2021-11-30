VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

choice = ""
loop do
  prompt("Choose one: #{VALID_CHOICES.join(", ")}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
end

computer_choice = VALID_CHOICES.sample()

Kernel.puts("You chose: #{choice}; Computer chose #{computer_choice}")

if (choice == "rock" && computer_choice == "scissors") ||
  (choice == "scissors" && computer_choice == "paper") ||
  (choice == "paper" && computer_choice == "rock")
  prompt("You won!")
elsif (computer_choice == "rock" && choice == "scissors") ||
  (computer_choice == "scissors" && choice == "paper") ||
  (computer_choice == "paper" && choice == "rock")
  prompt("Computer won!")
else
  prompt("It's a tie!")
end
