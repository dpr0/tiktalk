# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks', sessions: 'users/sessions' }

  resources :users do
    resources :videos
    resources :likes
    resources :chats do
      resources :messages
    end
  end
  resources :interests
  resources :roles
  resources :sex
  resources :countries
  resources :cities
  resources :universities

  root 'users#index'
end
