class Player
  attr_reader :name

  LIVES = 3

  def initialize name
    @name = name
    @lives = LIVES
  end

end