Rails.application.routes.draw do
  get 'sessions/new'

  get 'about', to: "pages#about"

  get 'contact', to: "pages#contact"

  get 'projects', to: "projects#index"

  get 'companies', to: "companies#index"

  get 'users', to: "users#index"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

end
