Rails.application.routes.draw do
  
  post 		'likes/create' => 'likes#create', as: 'likes'
  delete 	'likes/:id' => 'likes#destroy', as: 'like'

  resources :sessions
#   auto-creates:
#   Prefix Verb   URI     Pattern                    Controller#Method
#   sessions      GET    /sessions(.:format)          sessions#index
#                 POST   /sessions(.:format)          sessions#create
#   new_session   GET    /sessions/new(.:format)      sessions#new
#   edit_session  GET    /sessions/:id/edit(.:format) sessions#edit
#   session       GET    /sessions/:id(.:format)      sessions#show
#                 PATCH  /sessions/:id(.:format)      sessions#update
#                 PUT    /sessions/:id(.:format)      sessions#update
#                 DELETE /sessions/:id(.:format)      sessions#destroy
  
  resources :users
#   auto-creates:
#   Prefix Verb   URI     Pattern                 	Controller#Method
#   users         GET    /users(.:format)          	  users#index
#                 POST   /users(.:format)             users#create
#   new_user      GET    /users/new(.:format)         users#new
#   edit_user     GET    /users/:id/edit(.:format)    users#edit
#   user          GET    /users/:id(.:format)         users#show
#                 PATCH  /users/:id(.:format)         users#update
#                 PUT    /users/:id(.:format)         users#update
#                 DELETE /users/:id(.:format)         users#destroy

  resources :secrets
#   auto-creates:
#   Prefix Verb   URI     Pattern                 	Controller#Method
# 	secrets 	  GET    /secrets(.:format)           secrets#index
#              	  POST   /secrets(.:format)           secrets#create
#              	  DELETE /secrets/:id(.:format)       secrets#destroy

end
