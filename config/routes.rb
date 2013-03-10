JeremyResumes::Application.routes.draw do
  devise_for :users

  resources :resumes do
    resources :sections
  end

  root :to => 'resumes#index'
end
