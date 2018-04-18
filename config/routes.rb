# Rails.application.routes.draw do
  # get 'home/show'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#home'
# end

AccProjManagement::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :projects
  resources :users, except: [:new, :create]

  root to: "home#show"
  get 'admin', to: 'users#admin'
  put 'join', to: 'projects#join'
  patch 'join', to: 'projects#join'
  post 'join', to: 'projects#join'
  put 'leave', to: 'projects#leave'
  patch 'leave', to: 'projects#leave'
  post 'leave', to: 'projects#leave'
end

