Rails.application.routes.draw do


  resources :time_window_managements
  resources :postal_managements
  resources :cities_managements
  resources :country_managements
  resources :province_managements
  resources :driver_managements

  resources :plant_managements
  resources :orders

  # resources :homes
  get 'home/index' => 'home/index'
  root to: 'home#index'

  resources :password_resets, :only => [:create, :edit, :new, :update]
  #resources :my_accounts, :only=>[:create,:edit,:update,:destroy,:show,:index]
  #resources :sessions, :only => [:new, :create, :destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # #password_reset controller
   #post 'password_resets', to: 'password_reset#create'
  # get 'password_resets/new', to: 'password_resets#new'
   #post 'send_password', to: 'password_resets#create'#, as: :send_password_reset
    get 'password_resets/:id/edit', to: 'password_resets#edit'
    post 'password_resets/:id', to: 'password_resets#update'



  #account setup
  #get 'signup' =>'new_role_super_admin_dashboard'

  namespace :role do
    resources :super_admin_dashboards #, :only => [:create, :edit, :new, :update, :destroy, :show,:index]
    get  'signup_new',  to: 'super_admin_dashboards#new'
    post  'signup',  to: 'super_admin_dashboards#create'

    resources :admin_dashboards
    resources :customers, :only => [:create, :edit, :new, :update, :destroy, :show,:index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
