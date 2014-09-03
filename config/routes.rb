Rails.application.routes.draw do
  root to: "welcome#show"
  resources :users, except: :index
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
    resources :users, except: :index
    resources :projects, except: [:new, :index]
    get "learn", to: "projects#learn"
    get "start", to: "projects#start"
    get "discover", to: "categories#index"
    resources :categories, only: [:index, :show]
    resources :locations, only: [:index, :show]
    resources :rewards, only: [:create, :destroy]
  end
end
