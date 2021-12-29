SPADES = "\u2660"
HEARTS = "\u2665"
DIAMONDS = "\u2666"
CLUBS = "\u2663"
SUITS = %w(SPADES HEARTS DIAMONDS CLUBS)
RANKS = %w(A 2 3 4 5 6 7 8 9 J Q K)
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

p create_deck