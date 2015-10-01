require '/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/studio_game_6.rb'
require '/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/studio_game_4.rb'

game = Game.new("DayZ")
player1 = Player.new("Hans")
game.add_player(player1)
game.play
