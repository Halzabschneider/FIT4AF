class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	
	#before_action :set_sidebar_movies




	def index
		@movies = Movie.released
	end

	def show
		@reviews = Review.where(params[:id])
	 	#@movie = Movie.find(params[:id ]) wird über die before_action eingefügt
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
			if @movie.save
				redirect_to movies_url, notice: "Erfolgreich erstellt!"
			else
				render :new
			end
		
	end

	def edit
 		#@movie = Movie.find(params[:id ]) wird über die before_action eingefügt
	end

	def update
		@movie.update(movie_params)
			if @movie.save
				redirect_to movies_url, notice: "Update war Erfolgreich."
			else
				render :new
			end
			
	end 

	def destroy
		@movie.destroy
		redirect_to movies_url, alert: "Zack, gelöscht!!!"
	end



	private
		def movie_params
		params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)	
		end

		def set_movie
			@movie = Movie.find(params[:id ])
		end
		

		#def set_sidebar_movies
		#	@sidebar_movies = Movies.upcoming
		#end

end