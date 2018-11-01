Rails.application.routes.draw do

  root 'application#index'

  get '/home' => 'application#home'

  get '/application/header' => 'application#header'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/home' => 'application#home'

  get '/users/:id/edit' => 'users#edit'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/experiences/new' => 'experiences#new'

  post '/experiences/new' => 'experiences#create'

  get '/experiences/:id' => 'experiences#show'

  resources :experiences
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
