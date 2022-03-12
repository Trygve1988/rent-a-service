Rails.application.routes.draw do
  resources :searches
  resources :user_skills
  resources :sheep
  resources :skills
  resources :horses
  resources :profiles

  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "profiles#index"
end
