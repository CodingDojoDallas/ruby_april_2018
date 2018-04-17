require_relative 'bankaccount'
RSpec.describe BankAccount do 
	before(:each) do
		@bank1 = BankAccount.new
		@bank2 = BankAccount.new
	end

	it 'cannot withdraw without money' do 
		# MUST RUN .DEPOSIT METHOD FIRST IN ORDER TO BE ABLE TO GET MONEY OUT
		@bank1.withdraw(100)
		expect(@bank1.withdraw(100)).to be_invalid

		# THIS DOES NOT WORK AND ISN'T A METHOD ERROR AS ASSIGNMENT ASKS....
		# expect(bank1.withdraw(100)).to raise_error(NoMethodError)
	end
	
	it 'cannot retrieve total number of accounts' do
		@bank2.gen_acct_num
		expect{@bank2.gen_acct_num}.to raise_error(NoMethodError)
	end

	it 'cannot retrieve total number of accounts' do
		@bank1.int_rate 0.03
		expect{@bank1.int_rate 0.03}.to raise_error(NoMethodError)
	end


end