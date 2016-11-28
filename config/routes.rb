Rails.application.routes.draw do
  resources :products
  root :to => 'users#index'
resources :user_sessions
resources :users
get 'help' => 'help#help'

get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout
end
