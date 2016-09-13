

class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.




# Naming Your Variable

class MyClass
  $my_variable = "Hello!"
end

puts $my_variable


# For instance...

class Person
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end

# Twice the @, Twice as Classy

class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"


# Classes Are Serious Business 

def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end

# Inheritance Syntax 

class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!

class MyApp < Application
end

# Override!

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
    def fight
        return "Breathes fire!"
    end
end


# When Good isn't Good Enough

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
    def fight
        puts "Instead of breathing fire..."
        super
    end
end


# Class Basics

class Message
    def initialize(from, to)
    @from = from
    @to = to
end
end

# Getting Classier

class Message
    @@messages_sent = 0
    def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
    
end
end

# Forge an Object in the Fires of Mount Ruby

class Message 
  @@messages_sent = 0
   def initialize(from, to)
       @from = from
       @to = to
       @@messages_sent += 1
   end
end

my_message = Message.new("Albania", "Hawaii")

# Inheriting a Fortune

class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
    end
end

my_message = Message.new("Albania", "Hawaii")

class Email < Message
    def initialize(subject)
        @subject = subject
    end
end


# Up, Up and Away!

class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
    end
end

my_message = Message.new("from", "to")

class Email < Message
    def initialize(from, to)
        super
    end
end

  