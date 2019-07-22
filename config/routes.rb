Rails.application.routes.draw do
  devise_for :users
  root to: 'shops#index'

  get '/allorders', to: 'orders#index', format: false
  resources :shops do
    resources :carts, only: [:index, :show, :new, :create, :destroy] do
      resources :orders do
        resources :past_orders, only: [:index, :new, :create, :destroy]
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
