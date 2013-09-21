Pokemon::Application.routes.draw do
  
  get "users/new"
  get "welcome/index"
  
  resources :posts do
    resources :comments
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  
  root :to => "welcome#index"

end
