Rails.application.routes.draw do
  resources :feedbacks
  devise_for :users, :path_prefix => 'dv'
  resources :users
  resources :houses, only: [:index, :show]
  resource :houses, only: [:search] do
    post 'search', to: 'home#search'
  end
  get 'republic_announce', to: 'users#republic_announce'
  resources :users do
    resources :houses do
      resources :tags, only: [:create, :index]
    end
  end
  root to: "home#index"
end
