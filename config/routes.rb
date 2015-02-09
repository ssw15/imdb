Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'


  resources :directors
  resources :actors
  resources :roles
  resources :movies
end
