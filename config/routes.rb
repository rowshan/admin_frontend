Rails.application.routes.draw do

  # resources :homes
  # get 'home/index'=> 'home/index'
  root to: 'home#index'

  resources :password_resets,:only=>[:create,:edit,:new,:update,:destroy,:show]
  resources :my_accounts, :only=>[:create,:edit,:update,:destroy,:show,:index]
  resources :sessions, :only => [:new, :create, :destroy]

  get 'login' => 'sessions#new', :as => 'login'
  #get 'login', to:'sessions#create'
  get 'logout' => 'sessions#destroy', :as => 'logout'

  #get 'password_resets/:id/edit'=> 'password_reset#create', as: :password_reset
  #get 'password_resets/new', to:'password_resets#new'

  namespace :role do
    resources :super_admin_dashboards
    resources :admin_dashboards
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
