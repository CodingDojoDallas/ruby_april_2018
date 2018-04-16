require 'rails_helper'

RSpec.describe User, type: :model do
  context "with valid attributes" do
  	it "should save" do
  		expect(build(:user)).to be_valid
  	end

  	it "automatically encrypts the password into the password_digest attribute" do
  		expect(build(:user).password_digest.present?).to eq(true)
  	end

  	it "email as lowercase" do
  		expect(create(:user, email: 'EMAIL@GMAIL.COM').email).to eq('email@gmail.com')
  	end
  end

  context "with invalid attributes should not save if" do
  	it "name is blank" do
  		expect(build(:user, name: '')).to be_invalid
  	end

  	it "email is blank" do
  		expect(build(:user, email: '')).to be_invalid
  	end

  	it "email format is wrong" do
  		emails = ["@user", "@example.com"]
  		emails.each do |email|
  			expect(build(:user, email: email)).to be_invalid
  		end
  	end

  	it "email is not unique" do
  		create(:user)
  		expect(build(:user)).to be_invalid
  	end

  	it "password is blank" do
  		expect(build(:user, password: '')).to be_invalid
  	end

  	it "password doesn't match password_confirmation" do
  		expect(build(:user, password_confirmation: 'notpassword')).to be_invalid
  	end
  end

  context "relationships" do
    before do
      @user = create(:user)
      @secret = create(:secret, content: 'secret 1', user: @user)
      @like = create(:like, secret: @secret, user: @user)
    end

    it "has secrets" do
      expect(@user.secrets).to include(@secret)
    end

    it "has likes" do
      expect(@user.likes).to include(@like)
    end

    it "has secrets through likes table" do
      expect(@user.secrets_liked).to include(@secret)
    end
  end
end