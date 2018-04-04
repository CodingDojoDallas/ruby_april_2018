class BankAccount
	attr_reader :id, :checking, :saving
	
	@@accounts = 0	# +Fixnum object+ number of accounts

	# Initialize Bank Account object
	# * set @checking to default Float amount
	# * set @saving to default Float amount
	# * set @id to a random Fixnum value
	# * set @interest_rate to default Float amount
	# * increment @@accounts by one
	def initialize
		@checking = 0.00

		@saving = 0.00

		@id = set_id

		@interest_rate = 0.01

		@@accounts += 1
	end

	public
		# Static attribute reader for total number of bank accounts
		# Returns:
		# +Fixnum object+ number of accounts
		def self.accounts
			@@accounts
		end

		# Increase an account's balance
		# * Test for valid account
		# * Convert amount to positive and valid money format
		# * Increase account balance, if given a valid account
		# Params:
		# +acct+:: +String object+ account to deposit funds in
		# +amount+:: +Float object+ amount to increase an account balance
		# Returns:
		# +Float object+ new account balance
		def deposit acct, amount
			return "Invalid account: '#{acct}'" unless valid_acct acct

			amount = to_money amount.abs

			adjust acct, amount
		end

		# Decrease an account's balance
		# * Test for valid account
		# * Convert amount to negative and valid money format
		# * Decrease account balance, if given a valid account
		# Params:
		# +acct+:: +String object+ account to withdraw funds from
		# +amount+:: +Float object+ amount to decrease an account balance
		# Returns:
		# +Float object+ new account balance
		def withdraw acct, amount
			return "Invalid account: '#{acct}'" unless valid_acct acct

			amount = to_money -(amount)

			adjust acct, amount
		end

		# Calculate bank capital across all accounts
		# Returns:
		# +Float object+ combined bank capital
		def combined_capital
			@checking + @saving
		end

		# Format account details to Hash
		# Returns
		# +Hash object+ account information
		def account_information
			{
				id: @id,
				checking: @checking,
				saving: @saving,
				total: combined_capital,
				interest_rate: @interest_rates
			}
		end

		# BankAccount to String implementation
		# Returns
		# +String object+ BankAccount object as String
		def to_s
			# Really need a money formatter */Sad Panda/*
			"id: #{@id}, checking: #{@checking}, saving: #{@saving}, total: #{combined_capital}, interest_rate: #{@interest_rate}"
		end

	private
		# Generate random id for account
		# Returns:
		# +Fixnum object+ account id
		def set_id
			rand(111111111...999999999)
		end

		# Convert a given amount to Float
		# Params:
		# +amount+:: +Any+ amount to be converted
		# Returns:
		# +Float object+ amount as money
		def to_money amount
			amount.to_f.round(2) rescue 0.0
		end

		# Test to see if given account is 
		# a valid account
		# Params:
		# +acct+:: +String object+ account name
		def valid_acct acct
			return false unless acct.is_a? String

			['checking', 'saving'].include? acct.downcase
		end

		# Modify an account's balance by a 
		# given amount
		# * downcase acct string
		# * retrieve current account balance
		# * calculate adjusted account balance
		# * test for overdraft protection
		# * update the account's balance
		# Params:
		# +acct+:: +String object+ designated account
		# +amount+:: +Float object+ amount to be adjusted
		# Returns:
		# +Float object+ adjusted account balance
		def adjust acct, amount
			acct.downcase!

			current_balance = self.instance_variable_get("@#{acct}")

			adjusted_balance = current_balance + amount

			return "Insufficient funds in #{acct}" unless adjusted_balance > 0

			self.instance_variable_set("@#{acct}", adjusted_balance)
		end
	
end

# FUNCTIONALITY TESTS

account = BankAccount.new

account.deposit('Checking', 200)

account.deposit('saving', 300)

account.withdraw('checking', 100)

puts account

# ERROR HANDLING

# Invalid Account
# p account.deposit('savng', 10000) 
# p account.deposit(123, 10000)
# Insufficient Funds
# p account.withdraw('checking', 20000000)
# p account.withdraw('checking', 1000000000000)
# # Invalid Amount
# Need to have, but the zzzzzz's are calling
# puts account

