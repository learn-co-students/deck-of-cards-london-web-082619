require 'pry'

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        
        suit.each{|s| 
            rank.each{|s|
                @cards << Card.new(suit, rank)
                }
        
            }
        # for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do
        #     for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
        #         @cards << Card.new(suit, rank)
        #         binding.pry
        #     end
        #   end
    end

    def choose_card
        card_choosen = self.cards.sample
        @cards.delete(card_choosen)
    end
end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end

end
