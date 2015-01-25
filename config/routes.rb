Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :movies, only: [:index, :show]
  resources :reservations, only: [:create, :destroy]
  resource :sessions, only: :destroy

  get '/auth/:provider/callback', to: 'sessions#create'

  root to: 'movies#index'
end
