Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/profile', to: 'pages#profile'
  resources :events do
    resources :bookings, only: %i[new create index destroy]
  end
  resources :bookings, only: :index
  resources :feed_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
