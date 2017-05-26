Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :portfolios
  resources :services
  resources :about_us
  resources :contacts
  resources :blogs
  resources :prices
  resources :home
end
