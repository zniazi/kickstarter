Rails.application.routes.draw do
  root to: "welcome#show"
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :projects
  get "learn", to: "projects#learn"
  get "start", to: "projects#start"
  get "discover", to: "categories#index"
  resources :categories, only: :show
  resources :rewards, only: [:create, :destroy]
end
