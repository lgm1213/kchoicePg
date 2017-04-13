Rails.application.routes.draw do
# static pages
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'

# user routes
  resources :users
end
