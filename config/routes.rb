Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show,:edit,:update]
  resources :users, only: [:show]
  resources :friendships
  # The priority is based upon or