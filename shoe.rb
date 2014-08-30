require_relative "deck.rb"

class Shoe
  attr_reader :decks, :penetration, :cards
  def initialize(decks, max_penetration)
    @decks, @max_penetration = decks, max_penetration
    @cards = []
    @penetration = 0.0

    @decks.times do
      @cards += (Deck.new).cards
    end
  end

  def draw
    @cards.shift
  end

  def shuffle!
    @cards.shuffle!
  end

  def need_shuffle?
    @penetration = 1.0 - (@cards.length / (52.0 * @decks.to_f))
    return @penetration > @max_penetration
  end
end
