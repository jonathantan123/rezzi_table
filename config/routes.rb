Rails.application.routes.draw do
  resources :reviews

  resources :users 
  resources :reservations

  resources :restaurants
  resources :cities

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end