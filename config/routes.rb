Rails.application.routes.draw do
  resources :products
  devise_for :users
  resources :friends
  get 'home/about'
  # root 'home#index'
  root 'friends#index'
  scope ':locale', locale:/en|vi/ do
    get '/', to:'friends#index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
