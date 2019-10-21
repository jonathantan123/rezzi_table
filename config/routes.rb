Rails.application.routes.draw do
  resources :reviews
  # resources :reservations
  resources :users do 
    resources :reservations
  end
  resources :restaurants
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
