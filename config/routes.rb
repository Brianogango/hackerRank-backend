Rails.application.routes.draw do
  resources :assessment_katas
  resources :assessments
  resources :katas
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/users', to: 'users#create'
 get '/assessments/userId=:userId', to: 'assessments#show'

end
