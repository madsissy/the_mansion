Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  namespace :users do
    resources :players, only: [:new, :index, :create, :destroy]
  end
end
