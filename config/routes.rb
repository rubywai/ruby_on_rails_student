Rails.application.routes.draw do
  #about page
  get "about", to: "about#index"
  get "home" , to: "home#index",via: 'get'
  get "/" , to:"home#index",via: 'get'
  get "register" , to:"register#index"
  post "register" , to:"register#new"
  get 'student', to: "home#show"
  delete 'student', to: "home#deleteall"

  get 'edit' , to: "edit#index"
  patch 'edit', to: "edit#update"
  get 'delete', to: "delete#index"
  delete 'delete', to: "delete#delete"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
