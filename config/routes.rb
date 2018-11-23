Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index, :show] do
    resources :bookings, only: [:create]
    collection do
      get :search
    end
  end

  resources :messages, only: :create

  get 'conversations/:user_id', to: 'messages#index', as: :user_conversation

  resources :reviews, only: [:show, :index, :new, :create]
  resources :bookings, only: [:show]
end
