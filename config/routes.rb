Rails.application.routes.draw do
  get 'landing/home'

  get 'landing/about'

  get 'landing/contact'

  get 'landing/help'

  get 'user/form'

  get 'user/new'

  get 'user/index'

  get 'user/show'

  get 'user/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
