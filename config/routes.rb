Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'sign-up', to: 'users#edit'
  end

  resources :users do
    resources :dogs, only: [:index, :show]
  end
  resources :dogs, only: [:show, :edit, :update, :destroy, :new, :create]

  resources :sitters, only: [:index, :show] do
    resources :bookings
  end


end
