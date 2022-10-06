# frozen_string_literal: true

Rails.application.routes.draw do
   # Defines the root path route ("/")
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :properties
  resources :costumers
  resources :products
  resources :employees
  devise_for :users


end
