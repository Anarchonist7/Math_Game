class Player
  attr_reader :name, :score, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def death
    @lives -= 1
  end
end