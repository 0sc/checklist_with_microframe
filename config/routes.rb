ChecklistApplication.routes.draw do
  get "/", to: "checklists#index"
  resources :checklists
  # resources :welcome

  # get "/", to: "welcome#index"
  # get "/index/:id/chief/", to: "welcome#show"
  # get "/index/:id(/:di(/:ii(/params/:bb)))", to: "welcome#articles"
end
