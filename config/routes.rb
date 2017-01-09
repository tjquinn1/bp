Rails.application.routes.draw do
  devise_for :users
  resources :bills
  get '/home', to: 'home#index'
  
  root to: "home#index"

  get '/about', to: 'about#index'
end
