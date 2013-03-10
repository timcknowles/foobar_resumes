JeremyResumes::Application.routes.draw do
  resources :resumes do
    resources :sections
  end

  #root :to => 'welcome#index'
end
