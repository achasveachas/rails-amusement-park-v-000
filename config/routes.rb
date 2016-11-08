Rails.application.routes.draw do

  get 'rides/create'

  root 'static#home'

  resources :users, only: [:new, :create, :show]
  resources :attractions do
    resources :rides, only: [:create]
  end
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
