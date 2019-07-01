class ShoppingListItemsController < ApplicationController

    def index
        listitems = ShoppingListItem.all
        render json: listitems
    end

    def show
        listitem = ShoppingListItem.find_by(id: params[:id])
        if listitem
            render json: listitem
        else
            render json: { error: "Item not found" }, status: 404
        end
    end

    def create 
        newlistitem = ShoppingListItem.new(user_id: params[:user_id], food_id: params[:food_id])
        
        if newlistitem.save
            render json: newlistitem
        else
            render json: {error: "New list item not valid."}, status: 400
        end
    end

    def destroy 
        listitem = ShoppingListItem.find_by(id: params[:id])
        listitem.destroy
        render json: listitem
    end 

end
