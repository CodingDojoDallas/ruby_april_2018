class BankAccount
	attr_accessor :acct_num, :chk_bal
	@@total_accts = 0

	def initialize
		@acct_num = 0
		gen_acct_num
		
		@@total_accts += 1

		@chk_bal = 0
		# @save_bal = 0
		# @total = 0

		@int_rate = 0.01
	end

	def my_acct_num
		return @acct_num
	end

	def chk_acct
		return @chk_bal
	end

	# def save_acct
	# 	return @save_bal
	# end

	# def deposit money

	# 	@chk_bal += money
	# 	p "You have deposited $#{money} into your account"
		
	# 	else
	# 		p "Please enter a valid account for deposit."
		
	# 	self
	# end

	def withdraw money
		if @chk_bal > money
			@chk_bal -= money
			"You have withdrawn $#{money} from your account"
		else
			"Unable to process your request, please contact your account administrator."
		end
		self
	end

	# def total_balance
	# 	@total = chk_acct + save_acct
	# 	p "Your account totals are $#{@total}"
	# 	self
	# end

	# def acct_info
	# 	p "Your Account Info"
	# 	p "Acct #: #{@acct_num}"
	# 	p "Total: $#{@total}"
	# 	p "Checking Balance: $#{@chk_bal}"
	# 	p "Savings Balance: $#{@save_bal}"
	# 	p "Interest Rate: #{@int_rate}%"
	# 	self
	# end

	private 
		def gen_acct_num
			@acct_num = rand(999999)
			self
		end
		def total_accts
			p "The bank has #{@@total_accts} accounts open."
			return @@total_accts
		end
end

# acct1 = BankAccount.new
# acct1.acct_info.deposit(50, "checking").deposit(250, "savings").total_balance.withdraw(25, "savings")



