SPADES = "\u2660"
HEARTS = "\u2665"
DIAMONDS = "\u2666"
CLUBS = "\u2663"
SUITS = [SPADES, HEARTS, DIAMONDS, CLUBS]
RANKS = %w(A 2 3 4 5 6 7 8 9 J Q K)
FACE_CARDS = %w(J Q K)

def create_deck
  deck = []
  RANKS.each do |rank|
    SUITS.each do |suit|
      deck << [rank, suit]
    end
  end
  deck.shuffle!
end

def get_hand_value(hnd)
  # Remove aces, then replace them at end of hand.
  # This reordering is local to this method.
  aces, others = hnd.partition { |card| card[0] == "A" }
  hnd = others + aces
  
  value = 0
  hnd.each do |card|
    if ('2'..'9').include? card[0]    # It's a number card
      value += card[0].to_i
    elsif FACE_CARDS.include? card[0] # It's a face card
      value += 10
    else                              # It's an ace
      if value >= 12
        value += 1
      else
        value += 11
      end
    end
  end
  value
end

def print_card(crd)
  print crd[0],crd[1]
end

def print_hand(hnd)
  hnd.each do |card|
    print_card(card)
    print " "
  end
  puts "\nHand is worth #{get_hand_value(hnd)}"
end

def display_table(player_hnd, dealer_hnd)
  system('clear') || system('cls')
  puts "========="
  puts "BLACKJACK"
  puts "========="
  print "Dealer has: "
  print_hand(dealer_hnd)
  puts ""
  print "You have: "
  print_hand(player_hnd)
  puts ""
end

def get_player_choice
  loop do
    puts "Do you want to (h)it or (s)tay?"
    input = gets.chomp.downcase[0]
    if input == "h"
      return "hit"
    elsif input == "s"
      return "stay"
    else
      puts "Sorry, I didn't understand that."
    end
  end
end

# Main loop
loop do
  deck = create_deck
  
  player_hand = []
  dealer_hand = []

  2.times { player_hand <<  deck.shift }
  1.times { dealer_hand << deck.shift }

  # Player loop
  loop do
    display_table(player_hand, dealer_hand)

    choice = get_player_choice
    if choice == "hit"
      player_hand << deck.shift
    else
      puts "You stay with #{get_hand_value(player_hand)}"
      sleep(1.5)
    end
    
    break # Player chose stay
  end
  
  # Computer loop
  loop do
    display_table(player_hand, dealer_hand)
    sleep(1.5)
    puts "Dealer hits"
    sleep(1.5)
    if get_hand_value(dealer_hand) < 17
      dealer_hand << deck.shift
    end

  end

  break
end
