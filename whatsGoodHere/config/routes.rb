Rails.application.routes.draw do
  
  resources : profiles
  resources :offers
  resources :locations
  resources :highlights
  resources :hacks
end
