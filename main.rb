require './player.rb'
require './game.rb'

player1 = Player.new('Player1')
player2 = Player.new('Player2')
game1 = Game.new(player1, player2)
# Let's play a game!
game1.question