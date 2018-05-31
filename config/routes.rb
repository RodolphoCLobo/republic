Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'dv'
  resources :users
  resources :houses, only: [:index, :show]
  resource :houses, only: [:search] do
    post 'search', to: 'home#search'
  end
  get 'search_republic', to: 'users#search_republic'
  resources :users do
    resources :houses do
      resources :tags, only: [:create, :index]
    end
  end
  root to: "home#index"
end
