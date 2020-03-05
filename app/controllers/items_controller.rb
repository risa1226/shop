class ItemsController < ApplicationController
    def index
        @items = Item.all
        @favorite_item = current_user.favorites
    end
end
