Rails.application.routes.draw do
  get 'blogs/index'

  get 'contacts/index'

  get 'about_us/index'

  get 'services/index'

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :portfolios
  resources :services
  resources :about_us
  resources :contacts
  resources :blogs
end
