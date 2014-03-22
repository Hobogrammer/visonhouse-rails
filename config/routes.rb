VisionhouseRails::Application.routes.draw do
  resources :users

  get '/' , to: 'view_pages#index'

  match 'auth/facebook/callback', to: 'sessions#create', as: 'signin', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
