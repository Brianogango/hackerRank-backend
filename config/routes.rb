Rails.application.routes.draw do
  resources :assessment_katas
  resources :assessments
  resources :katas
  resources :users
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
