require_relative 'appleTree'

RSpec.describe AppleTree do
	before(:each) do
    	@appleTree1 = AppleTree.new
	end

	it "has a getter and setter for age attribute" do
    	@appleTree1.age = 15
    	expect(@appleTree1.age).to eq(15)
  	end

  	it "can't set height attribute" do
    	expect{@appleTree1.height = 200}.to raise_error(NoMethodError)
  	end

  	it "can't set count attribute" do
    	expect{@appleTree1.count = 150}.to raise_error(NoMethodError)
  	end

  	it "has a year_gone_by method" do
  		expect{@appleTree1.year_gone_by}.to raise_error(NoMethodError)
  	end

  	it "should not grow apples for first 3 years of life" do
  		@appleTree1.age = 1
  		expect(@appleTree1.year_gone_by).to eq("2, 5.5, 0")
  	end 

  	it "has a method pick_apples method to take all apples" do
    	expect(@appleTree1.pick_apples).to eq(0)
  	end

  	it "should not grow apples for after 10 years of life" do
  		@appleTree1.age = 12
  		expect(@appleTree1.year_gone_by).to eq("13, 5.5, 0")
  	end

end