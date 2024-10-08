Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get 'songs', to: 'songs#index'
  # get 'songs/new', to: 'songs#new'
  # post 'songs', to: 'songs#create'
  get 'dashboard', to: 'dashboard#show', as: :dashboard

  # get 'songs/:id', to: 'songs#show'

  resources :songs, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end

  patch '/bookings/:id/approve', to: 'bookings#approve'
  patch '/bookings/:id/decline', to: 'bookings#decline'
end
