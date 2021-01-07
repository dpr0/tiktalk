# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  resources :users

  root 'users#index'
end
