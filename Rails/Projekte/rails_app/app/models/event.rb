class Event < ActiveRecord::Base

	def free?
		self.price.blank? || self.price == 0
	end

end
