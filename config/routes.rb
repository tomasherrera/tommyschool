Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/users/:id/panel', to: 'users#panel', as: 'panel'
  resources :courses
end
