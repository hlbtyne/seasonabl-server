class FoodsController < ApplicationController

    def index
        foods = Food.all
        render json: foods
    end

    def show
        food = Food.find_by(id: params[:id])
        if food
            render json: food, include: :recipes
        else
            render json: { error: "Ingredient not found" }, status: 404
        end
    end

end
