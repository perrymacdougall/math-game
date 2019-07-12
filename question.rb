class Question
  attr_accessor :name, :rand1, :rand2

  def initialize(name)
    @name = name

    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
  end

  def ask
    puts "#{@name}: What does #{@rand1} plus #{@rand2} equal?"
    answer = STDIN.gets.chomp
  end
end
