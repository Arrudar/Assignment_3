Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  root "application#index" # Main page shows list of places

  post "/create_place", to: "application#create_place", as: "create_place" # Route for creating places

  resources :places do
    resources :entries, only: [:index, :create]
  end

end
