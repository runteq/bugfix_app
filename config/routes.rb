# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :users, only: %i[new create]
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
