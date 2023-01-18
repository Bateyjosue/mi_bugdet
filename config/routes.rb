Rails.application.routes.draw do
  # get 'transactions/index'
  # get 'transactions/new'
  # get 'transactions/create'
  get 'splansh/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splansh#index"

  resources :categories do
    resources :transactions, only: [:index, :new, :create]
  end
end


# new_category_transaction GET    /categories/:category_id/transaction/new(:format)    transactions#new
# edit_category_transaction GET    /categories/:category_id/transaction/edit(.:format) transactions#edit
# category_transaction GET    /categories/:category_id/transaction(.:format) transactions#show
# PATCH  /categories/:category_id/transaction(.:format)transactions#update
# PUT    /categories/:category_id/transaction(.:format)transactions#update
# DELETE /categories/:category_id/transaction(.:format) transactions#destroy
# POST   /categories/:category_id/transaction(.:format) transactions#create

# category_transactions GET    /categories/:category_id/transactions(.:format)transactions#index
# POST   /categories/:category_id/transactions(.:format)transactions#create
# new_category_transaction GET    /categories/:category_id/transactions/new(.:format)transactions#new