Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  
  resources :questions
  resources :categories
  root 'home#index'
end
