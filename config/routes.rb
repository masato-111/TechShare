Rails.application.routes.draw do
  get "posts/new"
  # root "posts#index"


  # get 'posts/new', to: 'posts#new', as: new_post
  # post 'posts/new', to; 'posts#create'
  resources :posts
  
end
