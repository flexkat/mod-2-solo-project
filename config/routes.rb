Rails.application.routes.draw do
  
  root to: "salons#index"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"

  resources :services
  resources :treatment_categories
  resources :stylist_treatments
  resources :treatments
  resources :stylists do
    resources :appointments
  end
  resources :salons
  resources :locations
  resources :users do
    resources :appointments
  end
  resources :appointments 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
