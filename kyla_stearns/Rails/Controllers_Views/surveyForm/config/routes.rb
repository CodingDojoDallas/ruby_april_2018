Rails.application.routes.draw do
  get '' => 'users#index'
  post 'create' => 'users#create'
  get 'results' => 'users#results'
end
