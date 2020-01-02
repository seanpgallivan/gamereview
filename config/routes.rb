Rails.application.routes.draw do
  resources :user_games


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

  get 'game/:slug', to: 'games#show', as: 'game'

  get 'genre/:slug', to: 'genres#show', as: 'genre'

  get 'mode/:slug', to: 'modes#show', as: 'mode'

end