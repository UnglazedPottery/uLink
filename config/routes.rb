Rails.application.routes.draw do
  resources :posts
  resources :topics
  resources :users

  get('/login', to: 'users#login')
  post('/authenticate', to: 'users#authenticate')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'topics#index'
  get 'topics', to: 'topics#index'
  get 'html', to: 'topics#html'
  get 'javascript', to: 'topics#javascript'
  get 'css', to: 'topics#css'




end
