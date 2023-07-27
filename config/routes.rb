Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v0 do
      namespace :users do
        post "/:user_id/subscriptions/:subscription_id", to: "subscriptions#create"
        patch "/:user_id/subscriptions/:subscription_id", to: "subscriptions#update"
        get "/:id/subscriptions", to: "subscriptions#show"
      end
    end
  end
end
