# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def add_info

  #   if user_signed_in?
    
  #   @user_id = current_user.user_id
  #   @carriage_id = current_user.prefectures.id
  #   current_cart.update(user_id: @user_id, carriage_id: @carriage_id)
  #   redirect_to '/carts/confirm'
  #   end
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
