Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'bookings/:id/book_recap', to: 'bookings#book_recap', as: 'book_recap'
  resources :islands do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :destroy]
end
