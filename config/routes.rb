# config/routes.rb
Rails.application.routes.draw do
  get 'pages/index'
  # get 'products/index'
  # get 'products/new'
  # get 'products/create'
  devise_for :admins

  namespace :admin do
    get 'dashboard/index', to: 'dashboard#index', as: :dashboard
  end

  # GET     /products          -> products#index
  # GET     /products/new      -> products#new
  # POST    /products          -> products#create

  # Using resources in your routes is typically preferred because it automatically sets up the standard RESTful routes for your controller actions, making your code cleaner and more maintainable. It also provides a consistent interface for CRUD operations.
  resources :products, only: [:index, :new, :create]
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#index"
end
