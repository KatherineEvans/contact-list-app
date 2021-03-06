Rails.application.routes.draw do
  get "/contacts" => "my_contacts#index"
  post "/contacts" => "my_contacts#create"
  get "/contacts/:id" => "my_contacts#show"
  patch "/contacts/:id" => "my_contacts#update"
  delete "/contacts/:id" => "my_contacts#destroy"

  post "/users" => "users#create"
  get "/users_show" => "users#users_show"

  post "/sessions" => "sessions#create"

end
