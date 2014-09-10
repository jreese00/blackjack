class Card
  attr_reader :rank, :suit, :value, :orientation

  def initialize(rank, suit, value)
    @rank, @suit, @value = rank, suit, value
    @orientation = :face_down
  end

  def toggle_value
    return @value unless [1,11].include?(@value)
    @value = @value == 1 ? 11 : 1
  end

  def name
    "#{@rank.to_s.capitalize} of #{@suit.to_s}"
  end

  def short_name
    (face_card? || ace? ? @rank.slice(0).capitalize : @value.to_s) + @suit.slice(0)
  end

  def flip
    @orientation = @orientation == :face_down ? :face_up : :face_down
  end

  def face_card?
    return [:jack, :queen, :king].include?(@rank)
  end

  def ace?
    return @rank == :ace
  end
end
