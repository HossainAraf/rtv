Rails.application.routes.draw do
  get 'admin_panel/index'
  get 'six_digit_inputs/new'
  get 'six_digit_inputs/create'
  resources :feedbacks
  resources :infos
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  authenticated :user do
    root 'dashboard#index', as: 'authenticated_root'
  end
  get 'dashboard/index', to: 'dashboard#index' 
  get 'pics', to: 'dashboard#pics'

  resources :six_digit_inputs, only: [:create]
  get 'output', to: 'six_digit_inputs#output'

  get 'six_digit_inputs/update_card_values', to: 'six_digit_inputs#update_card_values'

  resources :admin_panel, only: [:index]
  get 'admin', to: 'admin_panel#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  get 'home/index'
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'
  get 'icebreaker', to: 'pages#icebreaker'


  # Define a route for popup action
  get 'popup', to: 'home#popup'
  
  # Defines the root path route ("/")
  root 'home#popup'
end