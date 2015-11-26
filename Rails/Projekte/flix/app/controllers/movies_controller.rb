class MoviesController < ApplicationController
	def index
		@movies = %w(Superman Spider-Man Iron-Man)
	end
end
