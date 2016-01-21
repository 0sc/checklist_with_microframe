ChecklistApplication.routes.draw do
  get "/test", to: "lists#test"
  root "lists#index"
  resources :lists do
    resources :items
  end
  
  # resources :welcome

  # get "/", to: "welcome#index"
  # get "/index/:id/chief/", to: "welcome#show"
  # get "/index/:id(/:di(/:ii(/params/:bb)))", to: "welcome#articles"
end
