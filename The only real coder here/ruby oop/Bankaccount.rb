class BankAccount
	@@number_of_accounts = 0
	@@number_of_account_holders = 0
	@@interest_rate = 0.01
	def initialize
		account_number
		@checkings = 0
		@savings = 0
		@@number_of_accounts +=2
		@@number_of_account_holders +=1
	end
	def checkings_balance
		puts "Available Balance: $#{@checkings}"
		self
	end
	def savings_balance
		puts "Available Balance: $#{@savings}"
		self
	end
	def deposit_savings(dollar_amount)
		@savings += dollar_amount
		self
	end
	def deposit_checkings(dollar_amount)
		@checkings += dollar_amount
		self
	end
	def withdraw_checkings(dollar_amount)
		@checkings -= dollar_amount
		self
	end
	def withdraw_savings(dollar_amount)
		if @savings < dollar_amount
			puts "Insufficient Funds"
		else
			@savings -= dollar_amount
		end
		self
	end
	def withdraw_checkings(dollar_amount)
		if @checkings < dollar_amount
			puts "Insufficient Funds"
		else
			@checkings -= dollar_amount
		end
		self
	end
	def account_info
		puts "#{@account_number}"
		puts "Checkings Available Balance: $#{@checkings}"
		puts "Savings Available Balance: $#{@savings}"
		puts "Total Money: $#{@checkings + @savings}"
		puts "Interest Rate: #{@@interest_rate}"
		self
	end
	private
		def account_number
			@account_number = rand(10000..100000)
		end
end

person1 = BankAccount.new
person1.account_info.withdraw_checkings(10).deposit_savings(50).deposit_checkings(50).account_info.withdraw_checkings(10).account_info