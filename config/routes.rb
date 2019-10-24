Rails.application.routes.draw do
  resources :reviews

  resources :users 
  resources :reservations

  resources :restaurants
  resources :cities

  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create', as: "sessions"
  get 'signup', to: "users#new", as: "signup"
  get "/logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end