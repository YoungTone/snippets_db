Rails.application.routes.draw do

  get 'users/signup'

  get 'users/account'

  get 'users/signup'

  get 'users/account'

root "snippets#index"
get '/login', to: "sessions#login", as: 'login'
post '/login', to: "sessions#attempt_login"
delete '/logout', to: "sessions#logout", as: 'logout'
get '/signup', to: "users#signup", as: 'signup'
post '/signup', to: "users#create"

  resources :users, except: ['index', 'new'] do
    resources :snippets, shallow: true
  end
  resources :users, only: [] do
    resources :favorites, except: ['show']
  end

  resources :tags

  resources :resets, only: [:new, :create, :edit, :update]

end
