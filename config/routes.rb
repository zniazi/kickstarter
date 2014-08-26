Rails.application.routes.draw do
  root to: "welcome#show"
  resources :users
  resource :session, only: [:new, :create, :destroy]
end
