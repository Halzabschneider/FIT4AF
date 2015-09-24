# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert 
#    mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score


class Player

	attr_accessor :health, :score

	def initialize (name, health=100)
		@name = name.capitalize
		@health = health
	end
	def score
		@health + @name.length

	end
	def to_s
	"The Player #{@name}, has a health from: #{score}!"
	end

  def blam
		@health += 10
		puts "#{@name} got blamed"
	end
	def w00t
		@health -= 10
		puts "#{@name} got w00ted"
	end

end

player1 = Player.new("Nicolas", 40)
#puts player1.say_hello

player2 = Player.new("Kevin")
#puts player2

player3 = Player.new("Yannik")

#player2.blam
puts player2

#player1.w00t
puts player1

puts player1.health

puts player1.score

#Aufruf von einem Array. Als erstes Deklariert welchen Inhalt in dem Array enhalten sein soll[Zeile 56]
#Zeile 59 aufruf der Schleife und der einzellnen Player
#zeile 62 Ausgabe der davor im Array eingegeben Inhalte.
#Zeile 63 end 

players = [player1, player2, player3]

players.each do |player|
		puts player
	end

