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

  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'

  get '/experiences/new' => 'experiences#new'

  post '/experiences/new' => 'experiences#create'

  get '/users/:id/experiences/:id' => 'experiences#show'

  resources :experiences
  resources :users

  resources :users do
    resources :experiences
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
