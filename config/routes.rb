Rails.application.routes.draw do
  devise_for :users
  root to: "reports#index"
  resources :reports, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
end
