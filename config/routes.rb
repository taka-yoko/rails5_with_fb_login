Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: :index
  resources :movies, only: :index

  devise_for :users, controllers: { omniauth_callbacks: 'auth/callbacks' }
end
