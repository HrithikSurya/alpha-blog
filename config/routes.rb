Rails.application.routes.draw do
  root 'articles#index'             #routing to HomePage
  get 'about',to: 'pages#about' # this thing doing problem
  get 'show',to: 'pages#show'

  resources :users
  resources :articles  #, only: [:show, :index, :new, :create, :edit, :update]    
  #this gonna generate all http methods like get put post patch
end