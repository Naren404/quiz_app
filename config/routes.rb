Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  
  resources :questions
  resources :categories
  resources :attempts
  resources :scores

  root 'home#index'
end
