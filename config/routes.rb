Rails.application.routes.draw do
  get 'user/name'
  get 'user/email'
  get 'user/password_digest'
  resources :services
  resources :treatment_categories
  resources :stylist_treatments
  resources :treatments
  resources :stylists
  resources :salons
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
