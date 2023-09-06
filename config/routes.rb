Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/user" => "users#create"
end
