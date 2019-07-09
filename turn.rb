class Turn
  attr_reader :player, :current_round

  def initialize player, round
    @player = player
    @current_round = round
  end
end