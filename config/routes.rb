Rails.application.routes.draw do
  resources :katas
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/users', to: 'users#create'
end
