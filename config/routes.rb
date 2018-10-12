Rails.application.routes.draw do
  resources :users
  post 'users/check', to: 'users#check'
end
