Rails.application.routes.draw do
  root to: 'pages#home'

  get "bookings", to: "bookings#index"
  get "bookings/:id", to: "bookings#show", as: :booking
  get "favorites", to: "favorites#index"

  resources :villas, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :favorites, only: [:create]
    resources :reviews, only: [:create]
  end
  devise_for :users
end
