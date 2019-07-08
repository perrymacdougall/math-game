require '.player'

class Game
  def initialize
    player1 = Player.new 'Alice'
    player2 = Player.new 'Bob'

    @players = [player1, player2]
    @turn_manager = TurnManager.new
  end
end