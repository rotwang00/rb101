SPADES = "\u2660"
HEARTS = "\u2665"
DIAMONDS = "\u2666"
CLUBS = "\u2663"
SUITS = %w(SPADES HEARTS DIAMONDS CLUBS)
RANKS = %w(A 2 3 4 5 6 7 8 9 J Q K)
FACE_CARDS = %w(J Q K)
VALUES = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10]

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
  # Remove aces, then replace them at end of hand
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
    
hand = [["K", "CLUBS"], ["A", "SPADES"]]
p get_hand_value(hand)
 