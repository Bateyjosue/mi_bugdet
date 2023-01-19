require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = FactoryBot.create :user
    @category = Category.create(user: @user, name: 'Dinner', image: 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1')
  end

  it 'should be valid ' do
    expect(@category).to be_valid
  end

  it 'should not be valid without a name' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'should not valid without a user_id' do
    @category.user_id = nil
    expect(@category).to_not be_valid
  end
end
