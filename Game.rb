class Game

  attr_reader :players

  def initialize(names)
    @players = names.map {|name| Player.new(name)}
    @turns = []
    @player_cycle = players.cycle
  end

  def start
    puts " BEGIN! ".center(36, '-')
    puts ""
    
    # GAME LOOP
    while players.all?(&:alive?)
      @turns << Turn.new(@player_cycle.next)
      @turns.last.run
      self.print_scores
    end
    
    announce_winner(players.find(&:alive?))

  end

  def announce_winner(winner)
    puts " GAME OVER! ".center(36, '-')
    puts ""
    puts "#{winner.name} is the winner! The game is over after #{@turns.size} turns."
  end

  def print_scores
    @players.each { |player| puts player }
  end

  def to_s
    "Match between #{@players[0].name} & #{@players[1].name} is on turn #{@turns.size}."
  end
end