class CartsController < ApplicationController
    before_action :setup_order!

    def show
        @orders = current_cart.orders
    end

    def add_item
        if @order.blank?
            @order = current_cart.orders.build(item_id: params[:item_id])
        end

        @order.quantity = @order.quantity.to_i + params[:quantity].to_i
        @order.save

        redirect_to '/carts'
    end

    def update_item
        @order.update(quantity: params[:quantity].to_i)
        redirect_to '/carts'
    end

    def delete_item
        @order.destroy
        redirect_to '/carts'
    end

    
    private

    def setup_order!
        @order = current_cart.orders.find_by(item_id: params[:item_id])
    end

end
