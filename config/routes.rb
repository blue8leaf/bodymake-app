Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'  
  } 
  root to: "tops#index"
  resources :reports, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show
  resources :graphs, only: :index
  resources :tops, only: :index

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
  end
end
