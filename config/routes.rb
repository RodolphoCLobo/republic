Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'dv'
  resources :users
  root to: "home#index"
end
