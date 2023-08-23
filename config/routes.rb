Rails.application.routes.draw do
  root 'pages#home'             #routing to HomePage
  get 'about',to: 'pages#about' # this thing doing problem
  get 'about',to: 'articles#show'

  resources :articles, only: [:show, :index, :new, :create, :edit, :update]    
  #this gonna generate all http methods like get put post patch
end