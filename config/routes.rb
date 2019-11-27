Rails.application.routes.draw do
  get "/merchants", to: "merchants#index"
  post "/merchants", to: "merchants#create"
  get "/merchants/new", to: "merchants#new"
  get "/merchants/:id", to: "merchants#show"

end
