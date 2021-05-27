Rails.application.routes.draw do
  root "blogposts#index"
  get "/blogposts", to: "blogposts#index"
  # get "/blogposts/:id", to: "pages#show"
  resources :blogposts
end
