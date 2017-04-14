Rails.application.routes.draw do
  get 'session/new'

# static pages
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/id/edit' => 'users#edit'
  



# user routes
  resources :users
  post 'users/new'





end
