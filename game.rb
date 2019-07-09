require './player'

class Game
  def initialize
    player1 = Player.new 'Player 1'
    player2 = Player.new 'Player 2'

    @players = [player1, player2]
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
    # @turn_manager = TurnManager.new

  end

  def run
    if not game_over?

      puts "#{@players[0].name}: What does #{@rand1} plus #{@rand2} equal?"
      answer = gets.chomp

      if answer.to_i == (@rand1 + @rand2)
        puts 'Success'
      end

      # turn = @turn_manager.next_turn

      # header "----- NEW TURN -----"

      summary
    end
  end

  private

  def summary
    @players.each { |p| puts p }
  end

  def game_over?
    @players[0].lives < 1 || @players[1].lives < 1
  end
end