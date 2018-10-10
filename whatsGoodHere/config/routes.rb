Rails.application.routes.draw do
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'browse', to: 'profiles#browse'
  get 'nearby', to: 'profiles#nearby'
  resources :profiles
  resources :offers, only: [:create, :update, :destroy, :edit]
  resources :locations, only: [:create, :update, :destroy, :edit]
  resources :highlights, only: [:create, :update, :destroy, :edit]
  resources :hacks, only: [:create, :update, :destroy, :edit]
  root 'profiles#index'
end
