require 'rails_helper'

RSpec.describe Message, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "With valid attributes" do
  	it "should create" do
  	  expect(build(:message)).to be_valid
  	end
  end

  context "With invalid attributes" do
  	it "should not create if user field is blank" do
  	  expect(build(:message, user: nil)).to be_invalid
  	end

  	it "should not create if message content is blank" do
  	  expect(build(:message, content: "")).to be_invalid
  	end

  	it "should not create if message contentis too short" do
  	  expect(build(:message, content: "hello")).to be_invalid
  	end
  end
end
