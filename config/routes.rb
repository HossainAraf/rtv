Rails.application.routes.draw do
  resources :feedbacks
  resources :infos
  get 'home/index'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/about', to: 'pages#about', as: 'about'

  # Defines the root path route ("/")
  root 'home#index'
end
