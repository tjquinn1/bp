Rails.application.routes.draw do
  resources :bills
  get '/home', to: 'home#index'
  
  root to: "home#index"

  get '/about', to: 'about#index'
end
