require 'pry'

CARD_BACK = "\u{1f0a0}"
SPADES = "\u2660"
HEARTS = "\u2665"
DIAMONDS = "\u2666"
CLUBS = "\u2663"
SUITS = [SPADES, HEARTS, DIAMONDS, CLUBS]
RANKS = %w(A 2 3 4 5 6 7 8 9 J Q K)
FACE_CARDS = %w(J Q K)
WINNING_SCORE = 21
DEALER_STAY = 17

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
   
def busted?(hnd)
  get_hand_value(hnd, true) > 21
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

def deal_cards(dck)
  player_hnd = []
  2.times { player_hnd << dck.shift }
  
  dealer_hnd = []
  2.times { dealer_hnd << dck.shift }

  return player_hnd, dealer_hnd
end

def player_turn(player_hnd, dealer_hnd, dck, show_hole_crd)
  loop do
    display_table(player_hnd, dealer_hnd, show_hole_crd)
    player_choice = get_player_choice
    if player_choice == "stay"
      return player_hnd, dck
    else
      player_hnd << dck.shift
      if get_hand_value(player_hnd, true) >= 21 # Player doesn't have a hole card
        return player_hnd, dck
      end
    end
  end
end

def dealer_turn(player_hnd, dealer_hnd, dck, show_hold_crd)
  loop do
    display_table(player_hnd, dealer_hnd, show_hold_crd)
    sleep(1.5)
    if get_hand_value(dealer_hnd, show_hold_crd) >= 17
      return dealer_hnd, dck
    else
      puts "Dealer hits"
      sleep(1.5)
    end
    dealer_hnd << dck.shift
  end
end

def get_player_choice
  loop do
    puts "Do you want to (h)it or (s)tay?"
    input = gets.chomp.downcase[0]
    if input == "h" || input == "hit"
      return "hit"
    elsif input == "s" || input == "stay"
      return "stay"
    else
      puts "Sorry, I didn't understand that."
    end
  end
end

loop do # Main loop
  loop do # Hand loop
    deck = create_deck
    player_hand, dealer_hand = deal_cards(deck)
    busted = false
    show_hole_card = false
    player_hand, deck = player_turn(player_hand, dealer_hand, deck, show_hole_card)
    display_table(player_hand, dealer_hand, show_hole_card)
    if busted?(player_hand)
      puts "You busted!"
      busted = true
    else
      puts "You stayed with #{get_hand_value(player_hand, true)}"
    end
    sleep(1.5)
    if !busted
      show_hole_card = true
      dealer_hand, deck = dealer_turn(player_hand, dealer_hand, deck, show_hole_card)
      if busted?(dealer_hand)
        puts "Dealer busted!"
        busted = true
      else
        puts "Dealer stayed with #{get_hand_value(dealer_hand), true)}"
    end


  end
  puts "Thanks for playing."
  break
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
