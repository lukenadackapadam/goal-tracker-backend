Rails.application.routes.draw do
  post "/user" => "users#create"

  post "/sessions" => "sessions#create"

  get "/goals" => "goals#index"
  post "/goals" => "goals#create"
  patch "/goals/:id" => "goals#update"
  delete "/goals/:id" => "goals#destroy"
end
