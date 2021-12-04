VALID_CHOICES = %w(rock paper scissors lizard Spock)
VALID_CHOICES_PROMPT = %w((r)ock (p)aper (s)cissors (l)izard (S)pock)
CHOICE_ABBREVIATIONS = {
  s: 'scissors',
  p: 'paper',
  r: 'rock',
  l: 'lizard',
  S: 'Spock'
}

# Key defeats value
WINNING_CONDITIONS = {
  scissors: %w(paper lizard),
  paper: %w(Spock rock),
  rock: %w(lizard scissors),
  lizard: %w(Spock paper),
  Spock: %w(scissors rock)
}

game_history = {
  player_wins: 0,
  computer_wins: 0
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_player_choice
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES_PROMPT.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      return choice
    elsif CHOICE_ABBREVIATIONS.key?(choice.to_sym)
      return CHOICE_ABBREVIATIONS[choice.to_sym]
    else
      prompt("That's not a valid choice.")
    end
  end
end

def win?(first, second)
  WINNING_CONDITIONS[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    keep_score("player")
  elsif win?(computer, player)
    prompt("Computer won!")
    keep_score("computer")
  else
    prompt("It's a tie!")
  end
end

def keep_score(winner)
  # if winner == "player"
  #   game_history(:player) = game_history(:player) + 1
  # else
  #   game_history(:computer) += 1
  # end
  p game_history
end

# Main game loop
loop do
  player_choice = get_player_choice
  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{player_choice}; Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for playing. Goodbye!")
