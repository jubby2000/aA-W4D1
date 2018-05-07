Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/', to: 'users#index', as: 'users'
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users/', to: 'users#create', as: 'create_user'
  patch 'users/:id', to: 'users#update', as: 'update_user'
  delete 'users/:id', to: 'users#destroy'
  # get 'users/:id' to: 'users#show'
  # get 'users/:id' to: 'users#show'
  # get 'users/:id' to: 'users#show'
  # get 'users/:id' to: 'users#show'
end
