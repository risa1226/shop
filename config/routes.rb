Rails.application.routes.draw do
  devise_for :users,:controllers => {
    :registrations => "users/registrations"
  }
  get '/users', to: redirect("/users/sign_up")
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
end
