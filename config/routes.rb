Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  get 'messages/destroy'
  get 'messages/index'
  get 'messages/show'

  resources :pages, only: :index

  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show]
end
