Rails.application.routes.draw do
  resources :horses
  resources :profiles

  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "profiles#index"
end
