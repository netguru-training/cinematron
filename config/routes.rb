Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :movies, only: [:index, :show]
  resources :reservations, only: [:create, :destroy]

  root to: 'movies#index'
end
