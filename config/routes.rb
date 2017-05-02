Rails.application.routes.draw do
  resources :departments
  resources :employees
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
