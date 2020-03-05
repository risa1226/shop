class Api::FavoritesController < ApplicationController
    def index
        
    end

    def create
        # @favorite = Favorite.create(set_params)
        # render :json => @favorite
        if Favorite.create!(set_params)
            render :json => { "favorite_create" => true}
        else
            render :json => { "favorite_create" => false}
        end


        
    end

    def destroy
        @favorite = Favorite.find_by(set_params)

        if @favorite.delete
            render :json => { "favorite_delete" => true}
        else
            render :json => { "favorite_delete" => false}
        end
    end

    def change
        if(false)
            create
            render :json => "true"
        else
            destroy
            json false
        end
        
    end
    private

    def set_params
        params[:favorite].permit(:user_id, :item_id)
    end

end
