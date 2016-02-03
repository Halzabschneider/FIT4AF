class Movie
	def initialize(ptitle, prank=50)
		@title = ptitle.capitalize
		@rank = prank
	end
	def thumps_up
		@rank = @rank + 10
	end
	def thumps_down
		@rank = @rank - 10
	end


	def to_s
		"Der Film #{@title} hat den Rank: #{@rank}"
	end
end

movie1 = Movie.new("batman", 40)
puts movie1
movie1.thumps_up
puts "Neuer Wert: #{movie1}"
movie1.thumps_down
puts "Neuer Wert2: #{movie1}"