def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)



def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 # Ignore this for now. We'll explain it soon!


  
# The argument is the piece of code you actually put between the method's parentheses when you call it, and the parameter is the name you put between the method's parentheses when you define it.

def cubertino(n) # n is the parameter 
  puts n ** 3
end

cubertino(8) # 8 is the argument during method calling





def what_up(greeting, *bros) # * signals to ruby that there may be more than one argument passed through and will allow this to be printed out
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")





def add(n)
    return n
end

output = add(4) # you can assign the outcome to a new variable and store it there
output += 3 # then do something to this new value which in this case is +3 
put output # this will print out the output from line 59 not 58


def add (x, y)
    return x + y
end



def greeter(name)
    puts "Hey" + name
end

def by_three?(n)
    return n % 3 == 0
else print false?
end
    

def greeter(name)
    return "Hi " + name + "!"
end

def by_three?(number)
    if number % 3 == 0
        return true
    else
        return false
    end
end



books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort!


# Combined comparison operator <=>
# returns 1, 0, -1
# 1 if first operand is greater than the second
# -1 if first operand is less than the second
# -1 if first block parameter should come before the second
# 1 if first block parameter should come after the second

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

book_1 <=> book_2 #returns 1




books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

   books.sort! do |first, second| 
      if first > second # first book before second alphabetically
       -1
      elsif first < second # first after second
       1
      else # first and second are the same
       0
      end
    end



books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |secondBook, firstBook| firstBook <=> secondBook }





# Can include parenthesis or not


def welcome(greeting)
    puts "Welcome to Ruby!"
    
end


def welcome name
    return "Hello, #{name}"
end




my_array = [1, 2, 3, 4, 5]

my_array.each do |n|
    sum = n*n
    puts sum
end


fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |firstFruit, lastFruit|
    lastFruit <=> firstFruit
end