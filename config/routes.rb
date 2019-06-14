Rails.application.routes.draw do
  resources :stylist_treatments
  resources :treatments
  resources :stylists
  resources :salons
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
