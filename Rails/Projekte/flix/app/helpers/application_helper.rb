module ApplicationHelper

	def format_movie_description(movie)
		if movie.description.length > 40
			truncate(movie.description, length: 40, separator: ' ', omission: ' ...') #omission: gibt an was nach der Erreichten länge stehen soll. eingabe zählt zu der maximalen anzahl dazu
		else
			movie.description
		end 
	end

	def format_total_gross(movie)
		if movie.flop?
			content_tag(:strong, "FLOP")
		else
			number_to_currency(movie.total_gross)
		end
	end


end
