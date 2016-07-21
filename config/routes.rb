Rails.application.routes.draw do

  get 'password_resets/create'

  get 'password_resets/update'

  get 'password_resets/destroy'

  get 'my_accounts/create'

  get 'my_accounts/update'

  get 'my_accounts/destroy'

  get 'accounts/index'

  get 'accounts/create'

  get 'accounts/update'

  get 'accounts/destroy'

  get 'sessions/create'

  get 'sessions/destroy'

  namespace :dashboard do
    get 'dashboards/index'
  end

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
