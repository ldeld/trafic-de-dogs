Rails.application.routes.draw do

  devise_for :users, controllers: {:registrations => "registrations"}

  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  get '/profile', to: 'users#profile'
  get '/become_sitter', to: 'users#become_sitter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :dogs, only: [:index, :show]
  end
  resources :dogs, only: [:show, :edit, :update, :destroy, :new, :create]

  resources :sitters, only: [:index, :show] do
    resources :bookings
  end



end
