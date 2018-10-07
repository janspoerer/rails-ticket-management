Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /de/ do
    root to: 'pages#home'
      resources :tickets, only: [:new, :create, :show, :index] do
        resources :comments
      end
  end
end
