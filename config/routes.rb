# frozen_string_literal: true

Rails.application.routes.draw do
  resources :stp_forms
  resources :users, only: [:create]

  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
end
