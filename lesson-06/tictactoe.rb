require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, scr)
  system('clear') || system('cls')
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "Player: #{scr[:player]} wins. Computer: #{scr[:computer]} wins."
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_score
  score = { player: 0, computer: 0 }
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
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, scr)
  !!detect_winner(brd, scr)
end

def detect_winner(brd, scr)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      scr[:player] += 1
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      scr[:computer] += 1
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  if !defined?(score)
    score = initialize_score
  else
    binding.pry
  end

  loop do
    display_board(board, score)

    player_places_piece!(board)
    break if someone_won?(board, score) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board, score) || board_full?(board)
  end

  display_board(board, score)

  if someone_won?(board, score)
    prompt "#{detect_winner(board, score)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!"
