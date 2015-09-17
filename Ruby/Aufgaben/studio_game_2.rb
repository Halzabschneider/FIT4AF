def say_hello(name,health=100)
	"Ich bin #{name.capitalize}, mit einem Wert von #{health} um #{time}!"
end

def time
		aktuelle_zeit = Time.new.strftime("%R")		
end


puts say_hello("Ludwig", "120")
puts say_hello("Edwin")

