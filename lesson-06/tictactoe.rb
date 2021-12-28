require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
WINNING_SCORE = 2

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, scr)
  system('clear') || system('cls')
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "First to 5 wins is the Champion!"
  print "Player: #{scr[:player]} win#{score_suffix(scr, :player)} || "
  print "Computer: #{scr[:computer]} win#{score_suffix(scr, :computer)}"
  puts ""
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def score_suffix(scr, who)
  if scr[who] == 1
    return ""
  else
    return "s"
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd, delimiter = ',', conjunction = 'or')
  empty = empty_squares(brd)
  if empty.size == 1
    return "#{empty[0]}"
  elsif empty.size == 2
    return "#{empty[0]} #{conjunction} #{empty[1]}"
  else
    str = ""
    (0..(empty.size - 2)).each do |num|
      str += "#{empty[num]}#{delimiter} "
    end
    str += "#{conjunction} #{empty[-1]}"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(brd)}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # Check for instant win
  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    break if square
  end

  # Check for imminent loss
  if !square  
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
    end
  end

  # Check for open middle square
  if !square && brd[5] == " "
    square = 5
  end

  # Otherwise, make random move
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_winning_square(line, brd)
  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
    brd.select{ |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def find_at_risk_square(line, brd)
  if brd.values_at(*line).count(PLAYER_MARKER) == 2
    brd.select{ |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      # scr[:player] += 1
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      # scr[:computer] += 1
      return 'Computer'
    end
  end
  nil
end

def add_win_to_score(winner, scr)
  scr[winner.downcase.to_sym] += 1
end

def check_for_champion?(scr)
  scr.values.include?(WINNING_SCORE)
end

def display_championship_message(scr)
  if scr[:player] == WINNING_SCORE
    prompt("You are the champion, my friend!")
  else
    prompt("Your computer overlord is the champion!")
  end
end

# Main loop
loop do
score = { player: 0, computer: 0 }

  # Play one game
  loop do
    board = initialize_board
    
    loop do
      display_board(board, score)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, score)

    if someone_won?(board)
      winner = detect_winner(board)
      prompt "#{winner} won!"
      add_win_to_score(winner, score)
    else
      prompt "It's a tie!"
    end
    sleep(2)

    if check_for_champion?(score)
      break
    end
  end

  display_championship_message(score)
  
  break
  # prompt "Play again? (y or n)"
  # answer = gets.chomp
  # break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!"
