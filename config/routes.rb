Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :reviews
  root 'books#index'
  resources :books
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
