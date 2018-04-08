Rails.application.routes.draw do
  get '' => 'users#index'
  post 'process' => 'users#process'
  get 'results' => 'users#results'
end
