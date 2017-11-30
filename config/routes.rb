Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  get '/edit-profile', to: 'users#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'sign-up', to: 'users#edit'
  end

  resources :users do
    resources :dogs, only: [:index, :new, :create]
  end
  resources :dogs, only: [:show, :edit, :update, :destroy]
  resources :sitters, only: [:index, :show] do
    resources :bookings
  end


end
