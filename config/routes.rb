Rails.application.routes.draw do
  resources :feedbacks
  resources :infos
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  authenticated :user do
    root 'dashboard#index', as: 'authenticated_root'
  end
  get 'dashboard/index', to: 'dashboard#index' 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/about', to: 'pages#about', as: 'about'
  
  get 'home/index'

  # Define a route for popup action
  get 'popup', to: 'home#popup'
  # Defines the root path route ("/")
  root 'home#popup'
end
