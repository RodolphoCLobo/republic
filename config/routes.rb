Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'dv'
  resources :users
  resources :houses, only: [:index, :show]
  resources :users do
    resources :houses do
      resources :tags, only: [:create, :index]
    end
  end
  root to: "home#index"
end
