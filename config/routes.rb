Rails.application.routes.draw do
  resources :subscribers
  resources :items
  root "items#index"
end
