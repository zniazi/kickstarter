Rails.application.routes.draw do
  root to: "welcome#show"
  resources :users do
    get "create", to: "users#"
  end
  resource :session, only: [:new, :create, :destroy]
  resources :projects, except: [:new, :index]
  get "learn", to: "projects#learn"
  get "start", to: "projects#start"
  get "discover", to: "categories#index"
  resources :categories, only: :show
  resources :rewards, only: [:create, :destroy]

  get '/auth/facebook/callback', to: 'oauth_callbacks#facebook'

  # Backbone

  namespace :api, :defaults => { :format => :json } do
    resources :projects, except: [:new, :index]
    resources :categories, only: :show
    resources :rewards, only: [:create, :destroy]
  end
end
