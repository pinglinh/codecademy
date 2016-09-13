class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number




class Dog
    def initialize(name, breed)
    @name = name
    @breed = breed
    end
end

# Going Public

class Dog
    def initialize(name, breed)
    @name = name
    @breed = breed
    end

    public

    def bark
        puts "Woof!"
    end
end

# Private! Keep Out!

class Dog
    def initialize(name, breed)
    @name = name
    @breed = breed
    end
    public
    def bark
        puts "Woof!"
    end
    private
    def id(id_number)
        @id_number = 12345
    end
end

# attr_reader, attr_writer

class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  attr_reader :name
  attr_writer :job
end


# attr_accessor

class Person
  attr_reader :name
  attr_accessor :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end

# What's a module 

module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# Module syntax

module MyLibrary
  FAVE_BOOK = "Harry Potter"
end

# Resolve to Keep Learning

puts Math::PI

# A Few Requirements

require 'date'

puts Date.today

# Feeling Included

class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

# The Marriage of Modules and Classes

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

# Imitating Multiple Inheritance

# Create your module here!
module MartialArts
    def swordsman
        puts "I'm a swordsman."
    end
end


class Ninja
include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

# Extend Your Knowledge

# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

# A Matter of Public Knowledge

class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
      puts "All systems go!"
  end
end

# Private Affairs

class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
      puts "All systems go!"
  end
  private
  def password
    return 12345
  end
end

# Module Magic

module Languages
    FAVE = "Ruby"
end

# Mixin for the Win

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory