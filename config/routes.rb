# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#show'
  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :users
    end
  end
end
