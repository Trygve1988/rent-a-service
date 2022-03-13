Rails.application.routes.draw do
  resources :searches
  resources :user_skills

  resources :profiles do
    member do
      post :search
    end
  end

  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "profiles#index"
end
