Rails.application.routes.draw do

  root 'application#index'

  get '/home' => 'application#home'

  get '/application/header' => 'application#header'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/home' => 'application#home'

  get '/users/:id/edit' => 'users#edit'

  post '/users/:id/edit' => 'users#update'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'

  get '/experiences/new' => 'experiences#new'

  post '/experiences/new' => 'experiences#create'

  get '/users/:id/experiences/:id' => 'experiences#show'

  get '/users/:id/experiences/:id/edit' => 'experiences#edit'

  post '/users/:id/experiences/:id/edit' => 'experiences#update'

  resources :experiences

  resources :users do
    resources :experiences
  end

  resources :users
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
