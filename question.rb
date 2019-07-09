require './player'

class Question
  attr_accessor :name

  def initialize name
    @name = name
  end

  def test
    puts 'test'
  end
end