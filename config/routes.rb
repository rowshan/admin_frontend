Rails.application.routes.draw do

  # resources :homes
  # get 'home/index'=> 'home/index'
  root to: 'home#index'

  resources :password_resets,:only=>[:create,:edit,:new,:update,:destroy,:show]
  #resources :my_accounts, :only=>[:create,:edit,:update,:destroy,:show,:index]
  resources :sessions, :only => [:new, :create, :destroy]

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy', :as => 'logout'


  #password_reset controller
  post 'password_resets'=> 'password_reset#create'
  get 'password_resets/new', to:'password_resets#new'
  get 'password_resets/:id/edit', to:'password_resets#edit', as: :password_setup



  #account setup
  get 'signup' =>'my_accounts#new'

  namespace :role do
    resources :super_admin_dashboards
    resources :admin_dashboards
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
