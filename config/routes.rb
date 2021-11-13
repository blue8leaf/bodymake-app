Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :reports, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show
  resources :graphs, only: :index
  resources :tops, only: :index
end
