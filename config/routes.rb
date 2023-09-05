Rails.application.routes.draw do
  post "/user" => "users#create"
end
