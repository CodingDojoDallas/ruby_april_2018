require_relative 'bank'

RSpec.describe Bank do
    before(:each) do
        @bank1 = Bank.new
        @bank2 = Bank.new
    end

    it 'has a getter method to retrieve checking account balance' do
        expect(@bank1.checking).to eq(0)
        expect(@bank2.checking).to eq(0)
    end

    it 'has a getter method for total account balance' do
        expect(@bank1.total).to eq(0)
    end

    it 'has a function to withdraw money' do
        # intialized @checking with 150 to allow this test to work
        expect(@bank1.withdraw('checking', 100)).to eq(50)
        expect(@bank2.withdraw('checking', 100)).to eq(50)
    end

    it "can't withdraw more money than in account" do
        expect{@bank1.withdraw('checking', 151)}.to raise_error(RuntimeError, "Insufficient Funds")
        expect{@bank2.withdraw('checking', 151)}.to raise_error(RuntimeError, "Insufficient Funds")
    end

    it "can't retrieve total number of bank accounts" do
        expect{@bank1.num_of_accts}.to raise_error(NoMethodError)
        expect{@bank2.num_of_accts}.to raise_error(NoMethodError)
    end

    it "can't set interest rate" do
        expect{@bank1.interest_rate = 0.02}.to raise_error(NoMethodError)
        expect{@bank1.interest_rate = 0.02}.to raise_error(NoMethodError)        
    end
end