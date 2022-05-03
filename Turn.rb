class Turn
  @@count = 0

  def initialize(current_player)
    @question = Question.new
    @player = current_player
    @@count += 1
    puts " TURN #{@@count} ".center(36, '-')
  end

  def run
    puts "#{@player.name}, " + @question.to_s
    
    prints "> "
    @guess = gets.chomp.to_i

    if @question.answer?(@guess)
      puts "Correct!"
    else
      puts "Wrong!"
      @player.lose_life
    end
  end
end