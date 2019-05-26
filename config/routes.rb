Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :players, only: [:new, :index, :create, :destroy]

end
