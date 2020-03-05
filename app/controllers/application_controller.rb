class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	
	before_action :current_cart

	helper_method :current_cart

	def after_sign_in_path_for(resource) 
    carts_path
  end

	def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :postcode, :prefecture_id, :city, :other_address])
  end

end
