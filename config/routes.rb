Rails.application.routes.draw do
  resources :users

  get 'sessions_controller/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  #get 'users/new' 
  #post 'users'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_in" => "sessions#new", :as => "sign_in"
  resources :users
  resources :sessions
end
