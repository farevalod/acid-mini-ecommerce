Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :carts
  resources :users
  resources :products do
	  collection { post :import }
  end
  post '/products/:id/add', to: 'products#add'
  post '/products/:id/remove', to: 'products#remove'
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
