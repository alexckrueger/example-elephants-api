Rails.application.routes.draw do
  get "/elephants" => "elephants#index"
  post "/elephants" => "elephants#create"
  
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
