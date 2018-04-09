Rails.application.routes.draw do
  get '' => 'dojos#main'
  get 'dojos' => 'dojos#index'
  get 'dojos/new' => 'dojos#new'
  
  post 'create' => 'dojos#create'
  
  get 'dojos/:id' => 'dojos#show'
  get 'dojos/:id/edit' => 'dojos#edit'

  patch 'dojos/:id/update' => 'dojos#update'
  delete 'dojos/:id/delete' => 'dojos#delete'

end
