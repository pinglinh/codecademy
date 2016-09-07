#1
print "Please enter your name:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Hey #{user_input}!"
else
  print "Your name has no Ss"   
end

#2
print "Please enter your name"
user_input = gets.chomp
user_input.downcase!
    
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  print "No S letter found"
end

puts "Thanks, #{my_string}"