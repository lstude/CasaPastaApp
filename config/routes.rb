CasaPastaApp::Application.routes.draw do

  get "sessions/new", as: :new_session
  post "sessions/create", as: :sessions
  
  # resources :categories
  resources :foods
  
  get "logout" => 'sessions#destroy', as: :logout
  
  get "categories/show"
  
  root :to => 'foods#index'
  
  get "categories/:id" => "categories#show", :as => :category

 

end
