class Game
  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
    @current_player = @p1
    @gameover = false
    @quest = self.genny
  end

  def genny
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
  end

  def switch
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def over?
    if @p1.lives == 0 || @p2.lives == 0
       self.switch
       @gameover = true
       puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
       puts "----- GAME OVER -----\nGood bye!"
      else
        puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
        puts "----- NEW TURN -----"
        self.switch
        self.genny
        self.question
    end
  end

  def question
    puts "#{@current_player.name}: What is #{@num1} + #{@num2}?"
    try = gets.chomp

    if try.to_i == @answer
      puts "#{@current_player.name}: Well aren't you smart!"
    else
      puts "#{@current_player.name}: What? No, god no!"
      @current_player.death
    end
    self.over?
  end
end