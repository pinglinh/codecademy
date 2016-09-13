fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

doubled_fibs = fibs.collect { |fib| fib * 2 }


# Learning to Yield

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }



# Yield With Parameters

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!
yield_name("Linh") { |n| puts "My name is #{n}" }


# old code
def double(n)
    puts "blah blah blah"
    yield(n)
    puts "Back to method"
end

double(2) { |n| n * 2 }


# New code 
def double(x)
    yield(x)
end

double(4) { |x| x * 2 }



#keeping Your Code DRY
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)


#Proc Syntax
#old code

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |floats| floats.floor }

ints = floats.collect(&round_down)


#new code
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |x| x.floor }
ints = floats.collect(&round_down)


# 8. Why Procs

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new { |height| height >= 4 }

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

# Create Your Own

def greeter
    yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)


# Call Me Maybe

hi = Proc.new { puts "Hello!" }
hi.call

# Symbols, Meet Procs

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)
# or 
strings_array=numbers_array.map(&:to_s)


# The Ruby Lambda

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

# Lambda Syntax

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |n| n.to_sym }

symbols = strings.collect(&symbolize)

# Lambdas vs. Procs

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


# Now You Try

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |n| n.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

# Been around the block a few times 

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |n| n.is_a? Integer }

# Creating a Proc

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |n| n < 100 }

# Passing Your Proc to a Method

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |n| n < 100 }
youngsters = ages.select(&under_100)

# Creating a Lambda

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }

# Passing Your Lambda to a Method

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }
a_to_m = crew.select(&first_half)
