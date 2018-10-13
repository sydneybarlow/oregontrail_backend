Rails.application.routes.draw do
  post 'users/login', :to => 'users#login'
  post 'users/signin', :to => 'users#create'
  get 'users/homepage', :to => 'users#homepage'
  resources :users
end
