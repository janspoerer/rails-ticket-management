Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'pages#home'
      resources :tickets, only: [:new, :create, :show, :index] do
        resources :comments
        get 'close', to: "tickets#close"
      end
  end
end
