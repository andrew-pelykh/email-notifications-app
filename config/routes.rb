Rails.application.routes.draw do
  resources :subscribers, only: [:create]
  get "logout/:id", to: "subscribers#destroy", as: "logout"
  resources :items
  root "items#index"
end
