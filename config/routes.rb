# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#show'

  mount ActionCable.server => "/cable"
  
  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :users 
      post 'sign_in', to: 'sessions#create'
    end
  end
end
