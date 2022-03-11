Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "home#index"
end
