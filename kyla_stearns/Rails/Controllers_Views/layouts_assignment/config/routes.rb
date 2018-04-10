Rails.application.routes.draw do
  root 'users#index'
  post 'new' => 'users#new'
  
  get 'posts' => 'posts#index'
  post 'posts/new' => 'posts#new', as: 'new_post'
end
