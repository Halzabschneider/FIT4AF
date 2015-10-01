class Playlist

		def initialize(name)
			@name = name
			@movies = []
		end
		def add_movie(movie)
			@movies << movie
		end 
		def play 
			puts "Playlist heisst: #{@name.capitalize}"
			@movies.each do |movie|
				puts movie
			end
		end
end

class Movie
	attr_reader :title, :rank

	def initialize(ptitle, prank=50)
		@title = ptitle.capitalize
		@rank = prank
	end
	def title=(title)
		@title = title.capitalize
	end
	def normalized_rank
		@rank / 10
	end
	def thumbs_up
		@rank = @rank + 10
	end
	def thumbs_down
		@rank = @rank -10
	end
	def to_s
		"Der Film #{@title} hat den Rank: #{normalized_rank}"
	end
end

	movie1 = Movie.new("Batman", 40)
	movie2 = Movie.new("spiderman")
	playlist = Playlist.new("Horrorfilme")
	playlist.add_movie(movie1)
	playlist.add_movie(movie2)
	playlist.play 

# movie1 = Movie.new("batman", 40)
# movie2 = Movie.new("spiderman")
# movie3 = Movie.new('superman')
# movies = [movie1, movie2, movie3]
# movies.each do |movie|
# 	puts movie
#end
