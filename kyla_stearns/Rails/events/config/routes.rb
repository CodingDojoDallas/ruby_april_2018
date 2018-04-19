Rails.application.routes.draw do
  
  root 'sessions#index' # set root path to be handled by sessions index method

  resources :users
  resources :sessions, only: [:create, :destroy]
  # nest the routes so I don't have to have to create a whole set of join routes
  resources :events do
  	resources :joins, only: [:create, :destroy]
  	resources :comments, only: [:create, :destroy]
  end
#   auto-creates:

#   Prefix Verb   URI Pattern                         Controller#Action

# => SESSIONS
#   sessions      POST   /sessions(.:format)          sessions#create
#   session       DELETE /sessions/:id(.:format)      sessions#destroy

# => USERS      
#        users    GET    /users(.:format)             users#index
#                 POST   /users(.:format)             users#create
#     new_user    GET    /users/new(.:format)         users#new
#    edit_user    GET    /users/:id/edit(.:format)    users#edit
#         user    GET    /users/:id(.:format)         users#show
#                 PATCH  /users/:id(.:format)         users#update
#                 PUT    /users/:id(.:format)         users#update
#                 DELETE /users/:id(.:format)         users#destroy

# => EVENTS      
#       events    GET    /events(.:format)            events#index
#                 POST   /events(.:format)            events#create
#    new_event    GET    /events/new(.:format)        events#new
#   edit_event    GET    /events/:id/edit(.:format)   events#edit
#        event    GET    /events/:id(.:format)        events#show
#                 PATCH  /events/:id(.:format)        events#update
#                 PUT    /events/:id(.:format)        events#update
#                 DELETE /events/:id(.:format)        events#destroy
# => JOINS 
# 	event_joins   POST   /events/:event_id/joins(.:format)     joins#create
#    event_join   DELETE /events/:event_id/joins/:id(.:format) joins#destroy

# => COMMENTS    
# event_comments  POST   /events/:event_id/comments(.:format)     comments#create
# event_comment   DELETE /events/:event_id/comments/:id(.:format) comments#destroy

end