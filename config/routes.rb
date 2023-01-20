Rails.application.routes.draw do
  # get 'transactions/index'
  # get 'transactions/new'
  # get 'transactions/create'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
  end
  root "splansh#index"

  resources :categories do
    resources :transactions, only: [:index, :new, :create]
  end
end
