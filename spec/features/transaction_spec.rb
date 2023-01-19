require 'rails_helper'

RSpec.feature "Transactions", type: :feature do
  before :each do
    @user = FactoryBot.create :user
    @category = Category.create(user: @user,name: 'Dinner', image: 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1', description: 'Foods list 1')
    @transaction = Transaction.create(category: @category, name: 'pasta burito', price: 11, description: 'food dinner 1', image:'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1' )

    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'should create a new transaction' do
    click_on 'Dinner'
    click_on 'Add a new Transaction'
    fill_in 'transaction_name', with: @transaction.name
    fill_in 'transaction_price', with: @transaction.price
    fill_in 'transaction_image', with: @transaction.image
    fill_in 'transaction_description', with: @transaction.description
    click_button 'Add Transaction'
    expect(page).to have_content('Transaction was successfully created.')
  end
end
