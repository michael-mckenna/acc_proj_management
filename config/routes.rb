# Rails.application.routes.draw do
  # get 'home/show'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'pages#home'
# end

AccProjManagement::Application.routes.draw do
  get 'pages/home'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  # resource :home, only: [:show]
  resource :pages, only: [:home]

  # root to: "home#show"
  root to: "pages#home"
end

