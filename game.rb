require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new("#{ARGV[0]}")
    @player2 = Player.new("#{ARGV[1]}")
    @players = [@player1, @player2]
    # @turn = Turn.new()
    puts "#{@player1.name} vs #{@player2.name}"
  end

  def run
    current_player = @players[0]

    question = Question.new(current_player.name)
    answer = question.ask

    if answer.to_i == question.rand1 + question.rand2
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    else
      current_player.lives -= 1
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    end

    @players = @players.rotate

    if @player1.lives > 0 && @player2.lives > 0
      puts "----- NEW TURN -----"
      run
    else
      puts "----- GAME OVER -----"
      return
    end
  end
end

game = Game.new

puts "----- Game ON! -----"

game.run