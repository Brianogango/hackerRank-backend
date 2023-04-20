Rails.application.routes.draw do
  resources :grades,  only: [:create, :update, :destroy]
  resources :submissions, only: [:create, :update, :destroy]
  
  resources :assessment_katas
  resources :assessments
  resources :katas
  resources :invitations, only: [:create, :update, :destroy]
  get '/grades', to: 'grades#student_index', as: 'student_grades'
  get '/tm/grades', to: 'grades#tm_index', as: 'tm_grades'
  get '/invitations', to: 'invitations#student_index', as: 'student_invitations'
  get '/tm/invitations', to: 'invitations#tm_index', as: 'tm_invitations'
  get '/submissions', to: 'submissions#student_index', as: 'student_submissions'
  get '/tm/submissions', to: 'submissions#tm_index', as: 'tm_submissions'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post '/users', to: 'users#create'
  get '/assessments/userId=:userId', to: 'assessments#show'

end
