Rails.application.routes.draw do
  resources :users
  resources :courses, only: [:index, :show, :create, :update]
  resources :tee_times, except: [:show]
  resources :golfers
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
end