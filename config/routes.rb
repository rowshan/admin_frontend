Rails.application.routes.draw do


  get 'home/index'=> 'home/index'
  #root 'home/index'

  resources :password_resets
  resources :my_accounts, :path=> "my_account"#:controller=>'my_account', :only=>[:edit,:update,:destroy,:show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'login'=>'sessions#new', :as=>'login'
  get 'logout'=>'sessions#destroy', :as=>'logout'


  namespace :role do
    resources :super_admin_dashboards
    resources :admin_dashboards
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
