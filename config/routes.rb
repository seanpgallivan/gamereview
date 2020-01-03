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

  get 'game/:slug', to: 'games#show', as: 'game'

  get 'genre/:slug', to: 'genres#show', as: 'genre'

  get 'mode/:slug', to: 'modes#show', as: 'mode'

  get 'user/new_game', to: 'user_games#new', as: 'new_played'
  post 'user/new_game', to: 'user_games#create'
  get 'user/:slug', to: 'user_games#show', as: 'played'
  patch 'user/:slug', to: 'user_games#update'
  delete 'user/:slug', to: 'user_games#destroy'
  get 'user/:slug/edit', to: 'user_games#edit', as: 'edit_played'

end