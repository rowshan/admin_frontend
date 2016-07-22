Rails.application.routes.draw do


  get 'home/index'=> 'home/index'
  #root to:'home/index'

  resources :password_resets
  resources :my_accounts, :path=> "my_account"#:controller=>'my_account', :only=>[:edit,:update,:destroy,:show]
  resources :sessions, only: [:new, :create, :destroy]
  #
  # match '/signin',  to: 'sessions#new'
  # match '/signout', to: 'sessions#destroy', via: :delete


  namespace :role do
    resources :super_admin_dashboards
    resources :admin_dashboards
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
