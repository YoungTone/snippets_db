Rails.application.routes.draw do

root "sessions#index"

get '/login', to: "sessions#login", as: 'login'
post '/login', to: "sessions#attempt_login"
delete '/logout', to: "sessions#logout", as: 'logout'
get '/signup', to: "sessions#signup", as: 'signup'
get '/home', to: "sessions#index", as: 'home'
post '/signup', to: "users#create"

  resources :users, except: ['index', 'new'] do
    resources :snippets, shallow: true
  end
  # resources :users, only: [] do
  #   resources :favorites, except: ['show']
  # end


end