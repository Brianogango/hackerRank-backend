Rails.application.routes.draw do
  resources :katas
  resources :users
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
