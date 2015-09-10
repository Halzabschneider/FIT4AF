var_name1 = 'larry'
var_health = 60


puts var_health.to_i
puts var_health.to_f



puts "#{var_name1}\'s health is #{var_health}" 
puts "\n\t"
puts "\n\t"

var_name2 = 'curly'
var_name3 = 'moe'
var_health_c = 125
var_health_m = 100
puts "100 + 125 + 60"
puts "\n\t"
puts "Players: \n\t#{var_name1} \n\t#{var_name2} \n\t#{var_name3}\n\t"

puts "#{var_name1} has a health of #{var_health}." 
puts "#{var_name2} has a health of #{var_health_c}."

var_Moe = 'Moe has a health of 100'

puts "#{var_Moe.center(50, "*")}\n" *2

puts "Shemp......................... 90 health\n" * 2
puts "Players: \n\t#{var_name1} \n\t#{var_name2} \n\t#{var_name3}\n\t"
var_t = Time.httpdate

puts "The game started on #{var_t}"