Rails.application.routes.draw do
  devise_for :users,:controllers => {
    :registrations => "users/registrations",
    :sessions => "users/sessions"
  }
  get '/users', to: redirect("/users/sign_up")
  
  namespace :api, { format: 'json' } do
    # resources :favorites, only: [:index, :create, :destroy]
    post '/favorites', to: 'favorites#create'
    delete '/favorite/delete', to: 'favorites#destroy'
  end
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
  get 'carts', to: 'carts#show'
  post '/add_item', to: 'carts#add_item'
  post '/update_item', to: 'carts#update_item'
  post '/delete_item', to: 'carts#delete_item'
  resources :carts do
    collection do
      get :confirm
      get :complete
      get :save_user
    end
  end
end
