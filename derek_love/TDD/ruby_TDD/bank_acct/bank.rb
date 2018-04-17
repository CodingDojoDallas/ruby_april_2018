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
        p "Checking Total: #{@checking}"
        p "Savings Total: #{@savings}"
        p "Interest Rate: #{@@interest_rate}"
    end
    
    def checking_acct
        p @checking
    end
    
    def savings_acct
        p @savings
    end

    def deposit(acct, num)
        if acct == 'checking'
            @checking += num
        elsif acct == 'savings'
            @savings += num
        end
        
    end

    def withdraw(acct, num)
        if @checking > num || @savings > num
            if acct == 'checking'
                @checking -= num
                checking_acct
            elsif acct == 'savings'
                @savings -= num
                savings_acct
            end
        else
            raise "Insufficient Funds"
        end
        
    end

    def total
        @checking + @savings
    end

    private
        def bank_acct
           @account_num = rand(10000..100000)
        end
end