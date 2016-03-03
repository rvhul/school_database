Rails.application.routes.draw do

  root 'home#land'
  resources :standards
  resources :houses
  # resources :students
end
