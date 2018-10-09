Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'browse', to: 'profiles#browse'
  get 'nearby', to: 'profiles#nearby'
  resources :profiles
  resources :offers, only: [:create, :update, :destroy]
  resources :locations, only: [:create, :update, :destroy]
  resources :highlights, only: [:create, :update, :destroy]
  resources :hacks, only: [:create, :update, :destroy]
  root 'profiles#index'
end
