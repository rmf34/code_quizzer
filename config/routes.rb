Compoundblingapplication::Application.routes.draw do
  devise_for :users

  get 'stats' => 'user_statistics#index'
  get 'static_pages/about'

  post 'set_answer_status', :to => 'answers#set_answer_status'
  get 'get_answer', :to => 'answers#get_answer'

  resources :exams, :only => [:index]
  post 'grade_exam'   => 'exams#grade_exam'
  post 'cancel_exam'  => 'exams#cancel_exam'
  get  'graded_count' => 'exams#graded_count'
  get  'user_exams'   => 'exams#user_exams'

  resources :families, :only => [:show]

  resources :quizzes, :only => [] do
    resources :questions
  end

  resources :quizzes, :only => [] do
    resources :comments, :only => [:create]
  end

  resources :topics, :path => '', :only => [] do
    resources :quizzes, :path => '', :only => [:show]
  end

  root :to => 'families#show', :id => 1
end
