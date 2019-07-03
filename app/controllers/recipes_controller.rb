class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes
    end

    # def show
    #     recipe = Month.find_by(id: params[:id])
    #     if month
    #         render json: month
    #     else
    #         render json: { error: "Month not found." }, status: 404
    #     end
    # end

end
