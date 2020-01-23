class DisplaysController < ApplicationController
    def home
        @items = Item.all
    end

end
