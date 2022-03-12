Rails.application.routes.draw do
  resources :horses
  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "users#index"
end
