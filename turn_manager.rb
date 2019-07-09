require './turn'

class TurnManager
  def initialize players
    @players = players.dup.shuffle
    @current_round = 0
    @current_index = 0
  end

  def next_turn

  end
end