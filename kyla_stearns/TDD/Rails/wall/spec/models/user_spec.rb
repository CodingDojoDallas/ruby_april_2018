require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "With valid attributes" do
  	it "should create" do
  		expect(build(:user)).to be_valid
  	end
  end

  context "With invalid attributes" do
  	it "should not create if username field is blank" do
  		expect(build(:user, username: "")).to be_invalid
  	end

  	it "should not create if username field is too short" do
  		expect(build(:user, username: "bump")).to be_invalid
  	end

  	it "should not create if username already exists" do
  		create(:user)
  		expect(build(:user)).to be_invalid
  	end
  end
end
