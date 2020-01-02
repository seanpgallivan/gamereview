Rails.application.routes.draw do
  get '/', to: 'static#welcome', as: 'welcome'
  get 'search', to: 'static#search', as: 'search'
  post 'search', to: 'static#results'

  delete '/', to: 'sessions#destroy'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'

  get 'user/home', to: 'users#show', as: 'home'
  delete 'user/home', to: 'users#destroy'
  get 'user/signup', to: 'users#new', as: 'signup'
  post 'user/signup', to: 'users#create'
  get 'user/edit', to: 'users#edit', as: 'edit'
  patch 'user/edit', to: 'users#update'

  resources :user_games
  resources :modes
  resources :genres
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
