Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'experiences#index'
  resources :experiences do
    resources :bookings, only: [:new,:create, :show, :destroy]
  end
  resources :bookings, only: [:index]
end
