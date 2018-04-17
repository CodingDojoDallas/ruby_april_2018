Rails.application.routes.draw do
  # this automatically creates all the restful routes
  # BUT DOES NOT ALLOW YOU TO NAME THEM WITH PREFIXES
  # resources :users

  get 'users' => 'users#index' # auto prefix 'users'
  post 'users' => 'users#create', as: 'create_user'
  get 'users/new' => 'users#new', as: 'new_user' #auto prefix 'users_new'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  get 'users/show' => 'users#show', as: 'user'
  patch 'users/:id' => 'users#update', as: 'update_user'
  delete 'users:id' => 'users#destroy', as: 'destroy_user'

end
