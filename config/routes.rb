Rails.application.routes.draw do
  get 'conversations/index'
  devise_for :users
  root to: 'pages#home'

  resources :reviews, only: [:show, :index, :new, :create]
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
