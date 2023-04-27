Rails.application.routes.draw do  
  get '/splash', to: 'splash#index'
  
  devise_for :users, sign_out_via: [:get, :post]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
  
    unauthenticated do
      root "splash#index", as: :unauthenticated_root
    end
  end

  resources :groups, only: [:index, :new, :create] do
    resources :expenses, only: [:index]
  end
  resources :expenses, only: [:new, :create]
end
