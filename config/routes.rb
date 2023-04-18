Rails.application.routes.draw do
  resources :assessment_katas
  resources :assessments
  resources :katas
  resources :invitations, only: [:create, :update, :destroy]
  get '/invitations', to: 'invitations#student_index', as: 'student_invitations'
  get '/tm/invitations', to: 'invitations#tm_index', as: 'tm_invitations'
   post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/users', to: 'users#create'
 get '/assessments/userId=:userId', to: 'assessments#show'

end
