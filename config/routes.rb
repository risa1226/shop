Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'displays#home'
  resources :displays do
    collection do
      get 'home'
      get 'company'
      get 'contact'
      get 'info'
    end
  end
  get 'company', to: 'displays#company'
  get 'contact', to: 'displays#contact'
  get 'info', to: 'displays#info'
  get 'items', to: 'items#index'
  get 'carts', to: 'carts#index'
end
