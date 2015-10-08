#Startdatei für die Aufgabe 6
#Mit dem Befehl "require" werden ausgelagerte Dateien in das aktuelle Projekt
#eingebunden. Anschließend muss der Pfad der zu includenden Datei angegeben werden
#bei game wird der Title des 
require "/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/studio_game_6.rb"
require "/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/Studio_game_4.rb"

game = Game.new("Knuckleheads")

player1 = Player.new("Moe")
game.add_player(player1)
player2 = Player.new("Larry", 60)
game.add_player(player2)
player3 = Player.new("Curly", 125)
game.add_player(player3)

game.play


