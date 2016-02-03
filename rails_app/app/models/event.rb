class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy

	validates :name, presence: true
	validates :description,  length: { minimum: 20 }
	validates :price, numericality: true

	HOW_HEARD_OPTIONS =['Newsletter', 'Blog Post', 'Twitter', 'Web Search', 'Other']
	def free?
		self.price.present? && self.price > 0 
	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
