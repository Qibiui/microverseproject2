Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show,:edit,:update]
  res