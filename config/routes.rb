Rails.application.routes.draw do
  #about page
  get "about", to: "about#index"
  get "home" , to: "home#index",via: 'get'
  get "/" , to:"home#index",via: 'get'
  get "register" , to:"register#index"
  post "register" , to:"register#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
