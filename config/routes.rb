Rails.application.routes.draw do
  get 'search/search'
  resources :dishes
  resources :chefs
  devise_for :users
  get 'chefs/index'
  get '/search', to: 'search#search', as: 'search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chefs#index"
  
end
