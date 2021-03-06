class BankAccount
    attr_reader :name 
    attr_accessor :balance, :status
    def initialize(name)
        @name = name 
        @balance = 1000
        @status = "open"    
    end
    def deposit(deposit_amount)
        @balance += deposit_amount
    end
    def display_balance
        @balance
        "Your balance is $#{self.balance}."
    end

    def close_account
      self.status = "closed"
    end
    def valid?
        if @balance > 0 && @status == "open"
            true 
        else
            false   
        end
    end

end
