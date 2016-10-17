Rails.application.routes.draw do
  get 'sessinons/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # 'welcome/index'
  get 'login/login'
  
  get "/login" => "sessinons#new"
  post "/login" => "sessinons#create"
  delete "/logout" => "sessinons#destroy"
  
  get 'signup' => 'users#new'
  
  resources :users
  
end
