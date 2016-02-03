#Startdatei für die Aufgabe 6
#Mit dem Befehl "require" werden ausgelagerte Dateien in das aktuelle Projekt
#eingebunden. Anschließend muss der Pfad der zu includenden Datei angegeben werden
#bei game wird der Title des 
require "/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/studio_game_6.rb"
require "/home/pan/Dokumente/eup_fit4af/Ruby/Aufgaben/Studio_game_4.rb"

game = Game.new("Knuckleheads")

player1 = Player.new("Moe")
player2 = Player.new("Larry", 60)
player3 = Player.new("Curly", 125)

players = [player1, player2, player3] #Variable Setzten
players.each do |player|
	game.add_player(player) #mit einer Schleife die einzelnen Player zu dem Attribut Player hinzufügen
end

game.play


