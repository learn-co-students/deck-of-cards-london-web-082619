require 'pry'

class Deck

    @@ranks =  ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    attr_accessor :cards

    def initialize #Deck.new
        @@suits.each do |suit|
            @@ranks.each do |rank|
                card = Card.new(suit, rank, self)
            end
        end
        @cards = Card.all.select{ |card| card.deck == self }
    end

    def choose_card 
        card = @cards.delete_at(rand(0..@cards.length-1))
    end

end

class Card

    attr_reader :suit, :rank, :deck
    @@all = []

    def initialize(suit, rank, deck) #Card.new("Hearts", "Q")
        @suit = suit
        @rank = rank
        @deck = deck
        @@all << self
    end

    def self.all
        @@all
    end

end

binding.pry
'save'