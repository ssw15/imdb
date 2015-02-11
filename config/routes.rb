Rails.application.routes.draw do
  resources :likes

  devise_for :users
  root 'movies#index'


  resources :directors
  resources :actors
  resources :roles
  resources :movies

  get '/my_favorites' => 'movies#favorites'
end
