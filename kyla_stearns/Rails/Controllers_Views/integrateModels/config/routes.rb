Rails.application.routes.draw do

  get '' => 'users#index'
  get 'users' => 'users#all_users'
  get 'users/new' => 'users#new'
  get 'users/total' => 'users#total'
  post 'users' => 'users#create'
  
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
end
