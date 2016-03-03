Rails.application.routes.draw do

  root 'home#land'
  resources :standards do
    resources :sections
  end
  resources :houses
  resources :students
end
