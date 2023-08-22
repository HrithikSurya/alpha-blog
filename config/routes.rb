Rails.application.routes.draw do
  root 'pages#home'             #routing to HomePage
  get 'about',to: 'pages#about' # this is thing doing problem

  resources :articles       #this gonna generate all http methods like get put post patch
end