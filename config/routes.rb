Rails.application.routes.draw do


  resources :schedule_managements
  resources :trip_managements
  resources :shift_managements
  resources :time_window_managements
  resources :postal_managements
  resources :city_managements
  resources :country_managements
  resources :province_managements
  resources :driver_managements
  resources :plant_managements
  resources :orders
  resources :invoices

  # resources :homes
  #get 'home/index' => 'home/index'
  root to: 'home#index'

  resources :password_resets, :only => [:create, :edit, :new, :update]
  #resources :my_accounts, :only=>[:create,:edit,:update,:destroy,:show,:index]
  #resources :sessions, :only => [:new, :create, :destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # #password_reset controller
    get 'password_resets/:id/edit', to: 'password_resets#edit'
    post 'password_resets/:id', to: 'password_resets#update'



  #account setup
  #get 'signup' =>'new_role_super_admin_dashboard'

  namespace :role do
    resources :super_admin_dashboards #, :only => [:create, :edit, :new, :update, :destroy, :show,:index]


    resources :admin_dashboards
    resources :customers, :only => [:create, :edit, :new, :update, :destroy, :show,:index]
    #post  'create_custom',  to: 'customers#create'

  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
