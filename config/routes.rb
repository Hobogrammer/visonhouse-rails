VisionhouseRails::Application.routes.draw do
  devise_for :users
  resources :subjects do
    resources :applications
  end

  resources :applications do
    resources :children
    resources :criminal_arrests
    resources :family_members
    resources :employments
    resources :housing_histories
    resources :people
  end
  get '/' , to: 'view_pages#index'

  match 'auth/facebook/callback', to: 'sessions#create', as: 'signin', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  get '/application', to: 'subjects#new'
end
