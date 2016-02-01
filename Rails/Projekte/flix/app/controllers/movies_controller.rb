class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])

	end

	def new
		@movie = Movie.new
	end

	def create
		permittet_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
		@movie = Movie.create(permittet_params)
		redirect_to movies_url
	end

end
