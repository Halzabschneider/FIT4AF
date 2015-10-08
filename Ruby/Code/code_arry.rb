#3.times do |number|		#ein Block; funktion wie eine Schleife.
#	puts number.to_s		#3.times ist eine Standartzählschleife
#end

#3.times { |n| puts n.to_s }

lotto = []
7.times do
	lotto << rand(1..49) #rand = zufallige zahl
end
#puts lotto

numbers = (1..10).to_a
var = numbers.select do |n|
	n.even?		# >4 = alle Zahlen größer als 4 // even? = gerade Zahlen
end
puts var
#partition ordnet die jeweilige wahr oder falsch zu, funktioniert nur bei True/false abfragen. erste Variable ist immer die der das ergebniss von True zugewiesen wird!
evens, odds = numbers.partition do |n| #wenn die zahl gerade ist wird die variable in evens gespeichert. bei ungeradenzahlen in odds
	n.even?
end

puts "____________"

puts evens
puts "--------------"
puts odds
