class BankAccount
	@@no_of_accounts = 0
	def initialize
		set_number
		@checking = 0
		@savings = 0
		@interest_rate = 0
	end

	def get_number
		puts @account_number
		self
	end

	def get_checking
		puts @checking
		self
	end

	def get_savings
		puts @savings
		self
	end

	def get_total
		puts @savings + @checking
		self
	end

	def deposit_checking(amt)
		@checking += amt
		self
	end

	def deposit_savings(amt)
		@savings += amt
		self
	end

	def withdraw_checking(amt)
		if amt < @checking
			@checking -= amt
			puts "you have withdrawn #{amt} from checking. #{@checking} remains"
		else
			puts "you dont have enuff"
		end
		self
	end

	def withdraw_savings(amt)
		if amt < @savings
			@savings -= amt
			puts "you have withdrawn #{amt} from savings. #{@savings} remains"	
		else
			puts "you dont have enuff"
		end
		self
	end	

	def account_information
		puts "your account number is #{@account_number}. your total money is #{@checking + @savings}. your checking balance is #{@checking} and your savings balance is #{@savings}. interest rate is #{@interest_rate}"
		self
	end


	private
		def set_number
			@@no_of_accounts += 1
			@account_number = rand(1000..9999)
		end

end

myAccount = BankAccount.new
myAccount.deposit_savings(1000).deposit_checking(2000).withdraw_savings(50).account_information
