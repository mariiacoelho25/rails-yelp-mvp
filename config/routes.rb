Rails.application.routes.draw do
  # Define routes for Restaurants and Reviews

  # Route for listing all restaurants
  resources :restaurants, only: [:index, :show, :new, :create, :destroy]

  # Route for creating reviews
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end



  # Define root path
  root "restaurants#index"
end
