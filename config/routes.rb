Rails.application.routes.draw do

  get 'reward/create'

resources :projects
resources :pledge, only: [:create]

resources :comments, only: [:create, :destroy]
resources :users, only: [:new, :create, :show]
resources :sessions, only: [:new, :create, :destroy]

end
