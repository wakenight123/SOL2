Rails.application.routes.draw do

  get '/experiences/new' => 'experiences#new'

  post '/experiences/new' => 'experiences#create'

  get '/experiences/:id' => 'experiences#show'

  resources :experiences
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
