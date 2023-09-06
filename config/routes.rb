Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/user" => "users#create"

  get "/goals" => "goals#index"
  post "/goals" => "goals#create"
end
