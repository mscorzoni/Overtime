Rails.application.routes.draw do
  resources :posts
  devise_for :users, skip: [:registrations]
  get 'static/homepage'

  root to: 'static#homepage'
end
