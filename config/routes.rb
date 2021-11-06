Rails.application.routes.draw do
  get 'reports/index'
  devise_for :users
  root to: "reports#index"
end
