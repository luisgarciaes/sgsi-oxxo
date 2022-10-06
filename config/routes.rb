# frozen_string_literal: true

Rails.application.routes.draw do
  get 'properties/name:string'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'home/index'
  devise_for :users
  get 'costumers/index'
  get 'costumers/show'
  get 'costumers/new'
  get 'costumers/create'
  get 'costumers/edit'
  get 'costumers/update'
  get 'costumers/destroy'
  get 'employees/index'
  get 'employees/show'
  get 'employees/new'
  get 'employees/create'
  get 'employees/edit'
  get 'employees/update'
  get 'employees/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
