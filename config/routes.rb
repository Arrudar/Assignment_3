Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  # Root route for the main page (list of places)
  root "places#index"

  # Resources for places and nested entries
  resources :places, only: [:index, :create] do
    resources :entries, only: [:index, :create]
  end

end
