Rails.application.routes.draw do
  get 'about', to: "pages#about"

  get 'contact', to: "pages#contact"

  get 'projects', to: "projects#index"

  get 'companies', to: "companies#index"

  get 'users', to: "users#index"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
