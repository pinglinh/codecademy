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