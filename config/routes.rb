Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  # Pages
  get '/start', to: 'story#start' 
  resources :players, only: [:new, :index, :create, :destroy]

end
