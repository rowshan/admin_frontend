Rails.application.routes.draw do

  # resources :homes
  get 'home/index' => 'home/index'
  root to: 'home#index'

  resources :password_resets#, :only => [:create, :edit, :new, :update, :destroy, :show]
  #resources :my_accounts, :only=>[:create,:edit,:update,:destroy,:show,:index]
  #resources :sessions, :only => [:new, :create, :destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # #password_reset controller
   post 'password_resets', to: 'password_reset#create'
   get 'password_resets/new', to: 'password_resets#new'
   post 'password_resets/:id/edit', to: 'password_reset#create', as: :send_password_reset
  # get 'password_resets/:id/edit', to: 'password_reset#edit'



  #account setup
  #get 'signup' =>'new_role_super_admin_dashboard'

  namespace :role do
    resources :super_admin_dashboards#, :only => [:create, :edit, :new, :update, :destroy, :show,index]
    resources :admin_dashboards
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
