Rails.application.routes.draw do
  # resources :users
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/users', to: 'users#create'
end
