Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :islands do
    resources :bookings, only: [:index, :new, :create, :edit, :update]
  end
  resources :bookings, only: [:show, :destroy]
end
