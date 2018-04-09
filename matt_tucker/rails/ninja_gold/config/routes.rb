Rails.application.routes.draw do
  root 'rpgs#index'
  get 'gamble/:building' => 'rpgs#gamble'
end
