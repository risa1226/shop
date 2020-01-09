class CartsController < ApplicationController
    def index
        @items = Item.all

        @cart_item = {title:'さくらんぼ', comment:'1Kg バラ詰め', price:3800, quantity:4, postage:500} 

        @total_price = (@cart_item[:price] * @cart_item[:quantity]) + (@cart_item[:postage] * @cart_item[:quantity])
    
        @item_total = @cart_item[:price] * @cart_item[:quantity]

        @postage_total = (@cart_item[:postage] * @cart_item[:quantity])

    end
end
