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

    def save_user
        if user_signed_in?
            @user_id = current_user.id
            @carriage_id = current_user.prefecture.id
            current_cart.update(user_id: @user_id, carriage_id: @carriage_id)
            @orders = current_cart.orders
            @orders.update(user_id: @user_id)
            redirect_to '/carts/confirm'
        else
            redirect_to '/users/sign_in'
        end
    end

    def confirm
        @user = current_user
        @orders = current_cart.orders

        @total_item_price = 0
        @total_quantity = 0
        @total_price = 0
        @orders.each do |order|
            # 商品名（さくらんぼ）
            @item_name = order.item.name
            # 商品名２（１Kgバラ）
            @item_second_name = order.item.second_name
            # １商品の金額
            @item_price = order.item.price
            # １商品の合計金額
            @item_total = (order.item.price * order.quantity)
            @total_item_price += @item_total
            # 全数量
            @total_quantity += order.quantity
            # 送料の合計金額
            @carriage_total = current_cart.carriage.price * @total_quantity 
            # 全商品と送料を足した最終合計金額
            @total_price = @total_item_price + @carriage_total
        end

        current_cart.update(total_price: @total_price)
    end

    def complete
        current_cart.update(date_time: Time.zone.now)
        OrderCompleteMailer.send_when_order_complete(current_user).deliver
        session[:cart_id] = nil
    end


    
    private

    def setup_order!
        @order = current_cart.orders.find_by(item_id: params[:item_id])
    end

end
