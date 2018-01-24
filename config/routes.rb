Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  namespace :users do
    resources :games, only: [:new, :index, :create]
  end
end
