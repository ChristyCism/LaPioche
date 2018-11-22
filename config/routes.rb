Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index, :show] do
    collection do
      get :search
    end
  end
  resources :messages, only: [:index, :create]
  resources :bookings, only: [:create, :show]
  resources :reviews, only: [:show, :index, :new, :create]
end
