module ApplicationHelper
	def format_price(event)
		 if event.free?
		 	content_tag(:strong, "FREE")
		 	#"<strong>FREE</strong>".html_safe 
		 	else
		 		number_to_currency(event.price, unit: "€") 
		 	end
	end

end
