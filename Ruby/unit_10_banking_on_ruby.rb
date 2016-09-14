# My Codecademy example 

class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)	





# My example

# Creating the Account Class


class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
end


# Private Affairs


class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    end
    
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end


# Displaying the Balance


class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    end
    
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}": pin_error
    end
    
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end


# Making a Withdrawal


class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    end
    
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}": pin_error
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount 
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end


# Opening an Account


class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    end
    
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}": pin_error
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount 
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

checking_account = Account.new("Linh", 1_000_567)

