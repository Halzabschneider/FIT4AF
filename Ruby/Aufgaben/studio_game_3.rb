class Player
	def initialize (name, health=100)
		@name = name.capitalize
		@health = health
	end

	def say_hello
	"The Player #{@name}, has a health from: #{@health}!"
	end

	def to_s
		say_hello
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


player2.blam
puts player2

player1.w00t
puts player1
