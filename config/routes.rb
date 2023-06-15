Rails.application.routes.draw do
  root 'books#index'
  
  devise_for :users
  resources :comments
  resources :books do
    resources :reviews
  end
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
