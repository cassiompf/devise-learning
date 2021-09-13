# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :items, only: %i[index show create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
