Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/teams" => "teams#index"
    get "/teams/:id" => "teams#show"
    delete "/teams/:id" => "teams#destroy"
    patch "/teams/:id" => "teams#update"
    post "/teams" => "teams#create"

  end
end
