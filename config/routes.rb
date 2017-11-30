Rails.application.routes.draw do

  devise_for :users, controllers: {:registrations => "registrations"}

  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users do
    resources :dogs, only: [:index, :new, :create]
  end
  resources :dogs, only: [:show, :edit, :update, :destroy]
  resources :sitters, only: [:index, :show] do
    resources :bookings
  end



end
