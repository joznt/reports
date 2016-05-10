Rails.application.routes.draw do
  resources :records
  resources :users
  root to: 'records#index'
end
