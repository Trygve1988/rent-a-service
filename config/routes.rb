Rails.application.routes.draw do
  resources :user_skills

  resources :profiles do
    collection do
      post :test
    end
  end

  devise_for :users, controllers: { registrations: "registrations" }

  # Defines the root path route ("/")
  root "profiles#index"
end
