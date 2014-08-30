require_relative "card.rb"

class Deck
  attr_reader :cards

  def initialize
    suits = [:clubs, :diamonds, :hearts, :spades]
    ranks = {:ace => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7,
             :eight => 8, :nine => 9, :ten => 10, :jack => 10, :queen => 10, :king => 10}

    @cards = []

    suits.each do |s|
      ranks.each do |r,v|
        @cards << Card.new(r,s,v)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end
end
