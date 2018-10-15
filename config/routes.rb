Rails.application.routes.draw do
  get 'users/homepage', :to => 'users#homepage'
  post 'users/login', :to => 'users#login'
  post 'users/signin', :to => 'users#create'
  resources :users, :family_members
end
