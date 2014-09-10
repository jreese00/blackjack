require_relative "deck.rb"

class Shoe
  attr_reader :decks, :penetration
  def initialize(decks, max_penetration=0.75)
    @decks, @max_penetration = decks, max_penetration
    @cards = []
    @discards = []
    @penetration = 0.0

    @decks.times do
      @cards += (Deck.new).cards
    end
  end

  def draw
    @discards.push(@cards.shift)
    @penetration = @discards.length.to_f / (@discards.length + @cards.length).to_f
    @discards.last
  end

  def length
    @cards.length
  end

  def shuffle!
    @cards += @discards
    @discards = []
    @penetration = 0.0
    @cards.shuffle!
  end

  def need_shuffle?
    return @penetration >= @max_penetration
  end
end
