Rails.application.routes.draw do
  get 'past_orders/new'
  get 'past_orders/create'
  get 'past_orders/index'
  get 'carts/new'
  get 'carts/create'
  get 'carts/show'
  get 'carts/destroy'

  get 'shops/index'
  get 'shops/new'
  get 'shops/create'
  get 'shops/show'
  get 'shops/edit'
  get 'shops/update'
  get 'shops/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
