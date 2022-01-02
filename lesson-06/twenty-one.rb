CARD_BACK = "\u{1f0a0}"
SPADES = "\u2660"
HEARTS = "\u2665"
DIAMONDS = "\u2666"
CLUBS = "\u2663"
SUITS = [SPADES, HEARTS, DIAMONDS, CLUBS]
RANKS = %w(A 2 3 4 5 6 7 8 9 J Q K)
FACE_CARDS = %w(J Q K)
WINNING_SCORE = 21


def create_deck
  deck = []
  RANKS.each do |rank|
    SUITS.each do |suit|
      card = { rank: rank, suit: suit }
      deck << card
    end
  end
  deck.shuffle!
end

def get_hand_value(hnd, show_hole_crd)
  value = 0
  hnd.each_with_index do |card, index|
    if (index == hnd.size - 1) && !show_hole_crd  # Don't count the dealer's hole card yet
      break
    elsif ('2'..'9').include? card[:rank]         # It's a number card
      value += card[:rank].to_i
    elsif FACE_CARDS.include? card[:rank]         # It's a face card
      value += 10
    else                                          # It's an ace
      value += 11
    end
  end
  
  # Adjust for aces
  hnd.select { |card| card[:rank] == "A" }.count.times do
    value -= 10 if value > 21
  end
  value
end
      
def display_card(crd)
  print crd[:rank], crd[:suit]
end

def display_hand(hnd, show_hole_crd)
  hnd.each_with_index do |card, index|
    if (index == hnd.size - 1) && !show_hole_crd # Is it the dealer's hole card?
      print CARD_BACK
    else
      display_card(card)
      print " "
    end
  end
  puts "\nHand is showing #{get_hand_value(hnd, show_hole_crd)}"
end

def display_table(player_hnd, dealer_hnd, show_hole_crd)
  system('clear') || system('cls')
  puts "========="
  puts "BLACKJACK"
  puts "========="
  print "Dealer has: "
  display_hand(dealer_hnd, show_hole_crd)
  puts ""
  print "You have: "
  display_hand(player_hnd, true) # Player never has a hole card
  puts ""
end

def get_player_choice
  loop do
    puts "Do you want to (h)it or (s)tay?"
    input = gets.chomp.downcase[0]
    if input == "h" || input == "hit"
      return "hit"
    elsif input == "s" || inpute == "stay"
      return "stay"
    else
      puts "Sorry, I didn't understand that."
    end
  end
end

def deal_cards(dck)
  player_hnd = []
  2.times { player_hnd << dck.shift }
  
  dealer_hnd = []
  2.times { dealer_hnd << dck.shift }

end


display_table(player_hand, dealer_hand, false)

# Main loop
loop do
  deck = create_deck
  show_hole_card = false
  player_hand, dealer_hand = deal_cards(deck)
  display_table(player_hand, dealer_hand, show_hole_card)

  player_turn(player_hand, dealer_hand, deck, show_hole_card)

  dealer_turn(player_hand, dealer_hand, deck, show_hole_card)

end



# # Main loop
# loop do
#   deck = create_deck
  
#   player_hand = []
#   dealer_hand = []

#   2.times { player_hand <<  deck.shift }
#   1.times { dealer_hand << deck.shift }

#   # Player loop
#   loop do
#     display_table(player_hand, dealer_hand)
#     sleep(1.5)
#     choice = get_player_choice
#     if choice == "hit"
#       player_hand << deck.shift
#       next
#     end
#     puts "You stay with #{get_hand_value(player_hand)}"
#     sleep(1.5)
#     break # Player chose stay
#   end
  
#   # Computer loop
#   loop do
#     display_table(player_hand, dealer_hand)
#     sleep(1.5)
#     puts "Dealer hits"
#     sleep(1.5)
#     if get_hand_value(dealer_hand) < 17
#       dealer_hand << deck.shift
#     end
    
#   end

#   break
# end
