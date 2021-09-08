Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/profile', to: 'pages#profile'
  get '/join', to: 'pages#join'
  post '/joins', to: 'joins#create'
  resources :events do
    resources :bookings, only: %i[new create index destroy]
  end
  resources :bookings, only: :index

  resources :feed_items, only: :index do
    member do
      post 'toggle_favorite', to: "feed_items#toggle_favorite"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
