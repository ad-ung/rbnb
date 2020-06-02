Rails.application.routes.draw do
  resources: villas, only: [:index, :show]
  resources: bookings, only: [:index, :show, :create]
  resources: favorites, only: [:index, :show]
  resources: reviews, only: [:new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
