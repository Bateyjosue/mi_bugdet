Rails.application.routes.draw do
  get 'splansh/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splansh#index"

  resources :categories
end
