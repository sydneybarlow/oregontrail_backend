Rails.application.routes.draw do
  post 'users/check', :to => 'users#check'
  resources :users
end
