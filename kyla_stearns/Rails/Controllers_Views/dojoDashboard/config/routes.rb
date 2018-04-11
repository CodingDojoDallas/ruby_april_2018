Rails.application.routes.draw do
  # all routes for dojo
  # better way to indicate root '/' route
  root 'dojos#main'
  get 'dojos' => 'dojos#index' # auto-named 'dojos'
  get 'dojos/new' => 'dojos#new' # auto-named 'dojos_new'
  post 'dojos/create' => 'dojos#create' # auto-named 'dojos_create'
  get 'dojos/:id' => 'dojos#show', as: 'dojos_show'
  get 'dojos/:id/edit' => 'dojos#edit', as: 'dojos_edit'
  patch 'dojos/:id/edit' => 'dojos#update', as: 'dojos_update'
  delete 'dojos/:id/delete' => 'dojos#delete', as: 'dojos_delete'

  # all routes for student
  get 'dojos/:dojo_id/students/new' => 'students#new', as: 'students_new'
  post 'dojos/:dojo_id/students/create' => 'students#create', as: 'students_create'
  get 'dojos/:dojo_id/students/:student_id' => 'students#show', as: 'students_show'
  get 'dojos/:dojo_id/students/:student_id/edit' => 'students#edit', as: 'students_edit'
  patch 'dojos/:dojo_id/students/:student_id/edit' => 'students#update', as: 'students_update'
  delete 'dojos/:dojo_id/students/:student_id/delete' => 'students#delete', as: 'students_delete'

end
