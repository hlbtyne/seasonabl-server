class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :foods, through: :recipe_ingredients
end
