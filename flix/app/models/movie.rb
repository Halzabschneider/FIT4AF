class Movie < ActiveRecord::Base

	validates :title, :released_on, :rating, presence: { message: "= Bitte den Titel, Erscheinungsdatum und Rating angeben" }
	validates :total_gross, numericality: { only_integer: true, message: "= Bitte eine positive Zahl oder Null eingeben", greater_than_or_equal_to: 0 }
	#validates :total_gross, format { with: /\A[.jpg|.gif|.png]+\z/, message: "Bitte geben Sie nur Dateien an mit der Endung: .gif, .jpg, .png" }
    	



	def flop?
		total_gross.blank? || total_gross < 50000000
	end

	def self.released
		where("released_on <= ?", Time.now).order("released_on")
	end

end
