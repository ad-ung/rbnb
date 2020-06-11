Rails.application.routes.draw do
  root to: 'pages#home'

  get "bookings", to: "bookings#index"
  get "bookings/:id", to: "bookings#show"
  get "favorites", to: "favorites#index"

  resources :villas, only: [:index, :show] do
    resources :bookings, only: [:index, :show, :create]
    resources :favorites, only: [:index, :create, :destroy]
    resources :reviews, only: [:new, :create]
  end
  devise_for :users
end
