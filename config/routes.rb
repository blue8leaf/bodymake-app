Rails.application.routes.draw do
  devise_for :users
  root to: "reports#index"
  resources :reports, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show
  resources :graphs, only: :index
end
