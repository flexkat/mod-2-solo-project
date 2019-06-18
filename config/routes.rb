Rails.application.routes.draw do
  
  get '/signup', to: "users#new", as: "signup_path"
  get '/login', to: "sessions#new", as: "login_path"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  resources :services
  resources :treatment_categories
  resources :stylist_treatments
  resources :treatments
  resources :stylists
  resources :salons
  resources :locations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
