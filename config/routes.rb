Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tickets, only: [:new, :create, :show, :index]
end
