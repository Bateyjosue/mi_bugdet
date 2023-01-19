require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before :each do
    @user = FactoryBot.create :user
    @category = Category.create(user: @user,name: 'Dinner', image: 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1')
    @transaction = Transaction.create(category: @category, name: 'Netflix', price: 11, description: 'food dinner 1', image:'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1' )
  end

  it 'should valid with valid attributes' do
    expect(@transaction).to be_valid
  end

  it 'should not valid without a name' do
    @transaction.name = nil
    expect(@transaction).to_not be_valid
  end

  it 'should not valid without an amount' do
    @transaction.price = nil
    expect(@transaction).to_not be_valid
  end

  it 'should not valid without a Category' do
    @transaction.category = nil
    expect(@transaction).to_not be_valid
  end

  it 'should valid if amount is equall to 0' do
    @transaction.price = 0
    expect(@transaction).to be_valid
  end
end
