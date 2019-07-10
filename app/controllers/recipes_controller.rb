class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        if recipe
            render json: recipe
        else
            render json: { error: "Recipe not found." }, status: 404
        end
    end

end


    
    