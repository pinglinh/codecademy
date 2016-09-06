print question= "What's your first name?"
first_name= gets.chomp
first_name2=first_name.capitalize
first_name.capitalize!
puts "Your name is #{first_name}!"

print question = "What's your last name?"
last_name = gets.chomp
last_name2 = last_name.capitalize
last_name.capitalize!
puts "Your last name is #{last_name}!"

print question= "What city are you from?"
city = gets.chomp
city2 = city.capitalize
city.capitalize!
puts "The city you are from is #{city}!"

print question = "What state or province are you from?"
state = gets.chomp
state2 = state.upcase
state.upcase!
puts "The state or province you are from is #{state}!"