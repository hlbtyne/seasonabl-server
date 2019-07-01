require 'json'
require 'unirest'

class API

    def get_recipes
        response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?number=5&ranking=1&ignorePantry=false&ingredients=apple",
        headers:{
            "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
            "X-RapidAPI-Key" => "72161c23c9mshff16fb4cfa94eb4p14ebaejsn587b8503e8d3"
        }
        response.body
    end

end

# create the variables for the ruby api request
# 