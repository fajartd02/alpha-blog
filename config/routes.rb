Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles, only: [:show] # Kalau pengen 1 aja
end
