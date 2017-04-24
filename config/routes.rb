Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'session/new'

# static pages
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
 
# user routes
  resources :users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/id/edit' => 'users#edit'

# session routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
 
# account acctivation
  resources :account_activations, only: [:edit]

# password resets
  resources :password_resets, only: [:new, :create, :edit, :update]

end
