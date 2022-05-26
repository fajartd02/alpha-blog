Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] # Kalau pengen specific 
  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # Login
  get 'login', to: 'sessions#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'sessions#destroy'
end
