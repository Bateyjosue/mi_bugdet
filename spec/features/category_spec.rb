require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before :each do
    @user = FactoryBot.create :user
    @category = Category.create(
      user: @user, name: 'Dinner',
      image: 'https://www.eatthis.com/wp-content/uploads/sites/4/2017/12/waffle-honey-yogurt-bananas-flickr.jpg?quality=82&strip=1',
      description: 'Foods list 1'
    )

    # Login to test category
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
  context '#Valid Text' do
    it 'should have text Categories' do
      expect(page).to have_content 'Categories'
    end
    it 'should have a link' do
      expect(page).to have_link 'Add a new Category'
    end
  end

  it '#New Category' do
    click_link 'Add a new Category'
    fill_in 'category_name', with: @category.name
    fill_in 'category_image', with: @category.image
    fill_in 'category_description', with: @category.description
    click_button 'Add Category'

    expect(page).to have_content 'Category was successfully created.'
  end
end
