require 'rails_helper'

RSpec.describe Message, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:message)).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if message content is blank" do
      expect(build(:message, content: "")).to be_invalid
    end

    it "should not save if message content shorter than 10 characters" do
      expect(build(:message, content: "hello")).to be_invalid
    end

    it "should not save if username is blank" do
      expect(build(:message, user_id: "")).to be_invalid
    end
  end
end
