Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :movies, only: [:index, :show]

  root to: 'movies#index'
end
