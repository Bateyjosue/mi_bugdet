require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user =  FactoryBot.create :user 
  end

  it 'should valid ' do
    expect(@user).to be_valid
  end

  it 'should not be valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'should not be valid without an email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'should not valid be without a password' do
    @user.password = nil
    expect(@user).to_not be_valid
  end


end
