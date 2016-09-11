# Ternary conditional expression

puts 5 > 4 ? "5 is bigger than 4" : "4 is smaller than 4"

# The Case Statement

puts "Hello there!"
greeting = gets.chomp

case greeting
    when "English" then puts "Hello!"
    when "French" then puts "Bonjour!"
    when "German" then puts "Guten Tag!"
    when "Finnish" then puts "Haloo!"
else puts "I don't know that language!"
end

# Conditional assignment operator ||=
# This checks whether the variable has already been assigned to something, if not it will assign it with whatever you've inputted otherwise it will stay the same

favorite_language = nil
puts favorite_language

favorite_language ||= "Italian"
puts favorite_language

favorite_language ||= "Japanese"
puts favorite_language

favorite_language = "Japanese"
puts favorite_language

# In Ruby you don't have to type return in methods - Ruby's methods will return the result of the last evaluted expression

def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

# When || Ruby returns true when eiher expression is true
# When && Ruby returns true only when the first expression is true

def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b



my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |n| puts n if n.even? }
my_array.each { |x| puts x if x % 2 == 0 }

# upto and downto methods

letters = "L"

letters.upto("P") { |letter| puts letter, " " }

# Concatenation operator <<
# This can add an element to the end of an array

# Before
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!

# After

alphabet = ["a", "b", "c"]
alphabet << "d"

caption = "A giraffe surrounded by "
caption << "weezards!"


# One-Liners

puts 1 < 2 ? "One is less than two!" : False 
puts 1 < 2 ? "One is less than two!" : "One is not less than two."
puts "One is less than two!" if true


