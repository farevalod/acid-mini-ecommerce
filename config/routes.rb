Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :carts
  resources :users
  resources :products
  post '/products/:id/add', to: 'products#add'
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end