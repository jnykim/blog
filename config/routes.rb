Rails.application.routes.draw do
  root "blogposts#index"
  get "/blogposts", to: "blogposts#index"
  resources :blogposts do
  	resources :comments
  end
end
