# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :persons, only: %i[index create destroy update]
      resources :relationships, only: %i[index create destroy update]
    end
  end
end
