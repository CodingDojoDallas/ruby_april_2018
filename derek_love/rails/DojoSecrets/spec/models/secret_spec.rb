require 'rails_helper'

RSpec.describe Secret, type: :model do
  it 'requires content' do
    expect(build(:secret, content: "")).to be_invalid
  end
  context 'relationships' do
    before do 
      @user = create(:user)
      @secret = create(:secret, user: @user)
      @like = create(:like, user: @user, secret: @secret)
    end
    it 'belongs to a user' do
      expect(@secret.user).to eq(@user)
    end
    it 'has likes' do
      expect(@secret.likes).to include(@like)
    end
    it 'has users through likes table' do 
      expect(@secret.users).to include(@user)
    end
  end
end
