Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :profiles
  resources :offers
  resources :locations
  resources :highlights
  resources :hacks
  root 'profiles#index'
end
