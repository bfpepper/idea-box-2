Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :categories, only: [:create, :destroy, :index, :new]
  end

  namespace :admin do
    resources :images, only: [:create, :index, :new]
  end

  resources :categories, only: [:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
