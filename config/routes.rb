Rails.application.routes.draw do
  root 'movies#index'


  resources :directors
  resources :actors
  resources :roles
  resources :movies
end
