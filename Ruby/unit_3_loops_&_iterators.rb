# While loop
i = 0
while i < 5
  puts i
  i = i + 1 # have to increment otherwise it will constantly be looping at 0 and never end!
end

# Backward while loop
counter = 1
until counter > 10 
  puts counter
  counter += 1 # a shorter way to increment - this is called assignment operator; basically like counter = counter + 1
end

# For loop

for num in 1...15 # does not include 15
  puts num
end

for num in 1..15 # does include 15
  puts num
end

# Iterator

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# Next! can be used to skip certain steps in the loop

i = 20
loop do
  i -= 1
  next if i % 2 == 1 # the remainder is 1 when a number is divided by 2
  print "#{i}"
  break if i <= 0
end

i = 20
loop do
  i -= 1
  next if i % 2 != 0 # when divided by 2 the remainder is NOT 0
  print "#{i}"
  break if i <= 0
end

# Arrays 

my_array = [1,2,3,4,5]

# .each iterator - more powerful than a loop as you can apply an expression to each element of an object, one at a time

object.each { |item| _____ } 

object.each do |item|

end


#1

odds = [1,3,5,7,9]

odds.each do |num|
  print num * 2
end

#2

odds = [1,3,5,7,9]

odds.each do |num|
    num = num *2
    print "#{num}"
end


# The .times Iterator

20.times do
    puts "Hey Linh!"
end

# Looping with 'While'

x = 1
while x <= 50 do
    print x # can also do string interpolation on x but no need
    x += 1
end




