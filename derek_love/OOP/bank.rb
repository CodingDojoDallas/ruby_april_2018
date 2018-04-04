class Bank
    attr_accessor :checking, :savings

    @@num_of_accts = 0
    @@interest_rate = 0.01

    def initialize
        @checking = 0
        @savings = 0

        @@num_of_accts += 1
        p ("Accounts Created: #{@@num_of_accts}")
    end
    
    def acct_info
        p "Account Number: #{bank_acct}"
        p "Account Totals: #{total}"
        p "Checking Total: #{checking_acct}"
        p "Savings Total: #{savings_acct}"
        p "Interest Rate: #{@@interest_rate}"
    end
    
    def checking_acct
        return @checking
        self
    end
    
    def savings_acct
        return @savings
        self
    end

    def deposit(acct, num)
        if acct == 'checking'
            @checking += num
        elsif acct == 'savings'
            @savings += num
        end
        self
    end

    def withdraw(acct, num)
        if acct == 'checking'
            @checking -= num
            checking_acct
        elsif acct == 'savings'
            @savings -= num
            savings_acct
        end
        self
    end

    def total
        return @checking + @savings
        self
    end

    private
        def bank_acct
           return @account_num = rand(10000..100000)
        end
end