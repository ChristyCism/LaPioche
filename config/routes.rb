Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index] do
    collection do
      get :search
    end
  end

  resources :pages, only: :index do
    collection do
      get :search
    end
  end
  resources :reviews, only: [:show, :index, :new, :create]
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
