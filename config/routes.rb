Rails.application.routes.draw do
  root 'books#index'

  # resources :sessions, only: %i[create destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  get 'auth/:provider/callback', to: 'sessions#create'
  get 'log_out', to: 'sessions#destroy', as: 'log_out'

  get 'auth/failure', to: redirect('/')

end
