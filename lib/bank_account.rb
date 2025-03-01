require 'pry'

class BankAccount
    attr_accessor(:balance, :status)
    attr_reader(:name)

    def initialize(name, balance = 1000, status = 'open')
        ###why in method name??
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        if status === 'open' && balance > 0
            return true
        else
            return false
        end
    end

    def close_account
        @status = 'closed'
    end

end
