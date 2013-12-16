Compoundblingapplication::Application.routes.draw do
  get "static_pages/about"

  resources :families do
    resources :topics
  end

  resources :topics do
    resources :quizzes
  end

  resources :quizzes do
    resources :questions
  end

  resources :quizzes do
    resources :comments
  end

  devise_for :users

  root :to => 'families#show', :id => 1
  match 'programming' => 'families#show', :id => 1
  match 'more_programming' => 'families#show', :id => (Family.find_by_name("More Programming") ? Family.find_by_name("More Programming").id : 2)
  match 'quizzes/:id/admin_update' => 'quizzes#admin_update'
  match 'topics/:id/admin_update' => 'topics#admin_update'
end
