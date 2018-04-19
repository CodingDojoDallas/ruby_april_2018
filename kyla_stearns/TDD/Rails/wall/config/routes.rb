Rails.application.routes.draw do
  resources :users

  resources :messages

  resources :comments
end
