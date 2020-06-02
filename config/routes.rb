Rails.application.routes.draw do
  root to: 'pages#home'
  resources :villas, only: [:index, :show] do
    resources :bookings, only: [:index, :show, :create]
    resources :favorites, only: [:index, :show]
    resources :reviews, only: [:new, :create]
  end
  devise_for :users
end
