Rails.application.routes.draw do
  post "/sessions" => "sessions#create"

  post "/user" => "users#create"

  get "/goals" => "goals#index"
  post "/goals" => "goals#create"
  patch "/goals/:id" => "goals#update"
  delete "/goals/:id" => "goals#destroy"
end
