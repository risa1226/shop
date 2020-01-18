Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  get 'items', to: 'items#index'
  get 'carts', to: 'carts#index'
end
