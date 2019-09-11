Rails.application.routes.draw do
  root 'home#index'
  resources :posts
  resources :topics
  resources :users

  # get('/home', to: 'home#index')
  get 'users/destroy'
  get('/login', to: 'users#login')
  post('/authenticate', to: 'users#authenticate')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
