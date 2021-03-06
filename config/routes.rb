Rails.application.routes.draw do
  resources :roles
  devise_for :users
  resources :departments
  resources :employees
  root 'pages#home'
  resources :users
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
