Rails.application.routes.draw do

  devise_for :users, controllers: {:registrations => "registrations"}

  root to: 'pages#home'
  get '/bookings', to: 'bookings#index'
  get '/bookings/as_sitter', to: 'bookings#index_as_sitter'
  get '/bookings/as_sitter/:id/accept', to: 'bookings#accept'
  get '/bookings/as_sitter/:id/reject', to: 'bookings#reject'
  get '/availabilities', to: 'availabilities#index'
  get '/profile', to: 'users#profile'
  get '/become_sitter', to: 'users#become_sitter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :dogs, only: [:index, :show]
  end
  resources :dogs, only: [:show, :edit, :update, :destroy, :new, :create]
  resources :availabilities, only: [:destroy, :new, :create]

  resources :sitters, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
    resources :availabilities, only: [:index]
  end



end
