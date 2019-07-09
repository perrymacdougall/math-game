require './player'

class Game
  def initialize
    player1 = Player.new 'Alice'
    player2 = Player.new 'Bob'

    @players = [player1, player2]
    # @turn_manager = TurnManager.new

    puts @players
  end

  def run
    # while (not game_over?)
      # turn = @turn_manager.next_turn

      # header "----- NEW TURN -----"

    summary
    # end
  end

  private

  def summary
    @players.each { |p| puts p }
  end
end