Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # allows us to access the articles
  # all the routes for articles
  resources :articles, only: [:show, :index, :new, :create ]
end
