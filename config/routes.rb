Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "users#index"

  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
      get "likes"       => "relationships#likes", as: "likes"
      get "liked_users" => "relationships#liked_users", as: "liked_users"
  end
  resources :notifications, only: [:index]
  resources :messages, only: [:index, :create]
end