Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :dogs, only: [:index, :new, :create]
    resources :bookings
  end
  resources :dogs, only: [:show, :edit, :update, :destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sitters, only: [:index, :show]
end
