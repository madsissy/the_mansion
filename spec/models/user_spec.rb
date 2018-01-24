require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryBot.create(:user)).to be_valid
  end
  context 'attributes' do
    before :each do
      @user = FactoryBot.build(:user, email: 'lol@lol.com', password: 'azerty', password_confirmation: 'azerty')
    end
    it 'is invalid without an email' do
      expect(@user.email).not_to eql(nil)
    end
    it 'is a unique email' do
      @user.save
      expect(FactoryBot.build(:user, email: 'lol@lol.com',password: 'azerty', password_confirmation: 'azerty')).not_to be_valid
    end
    it 'is invalid without a password' do
      expect(@user.password).not_to eql(nil)
    end
  end
end
