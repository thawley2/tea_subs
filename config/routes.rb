Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v0 do
      post "/users/:user_id/subscriptions/:subscription_id", to: "users/subscriptions#create"
    end
  end
end
