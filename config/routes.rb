Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  
  resources :questions
  resources :categories
  resources :attempts
  resources :scores

  get 'attempts/index2'

  root 'home#index'
end
