class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
    @lives > 0
  end

  def lose_life
    @lives -= 1
  end

  def to_s
    "#{name} - #{@lives} lives left"
  end
end