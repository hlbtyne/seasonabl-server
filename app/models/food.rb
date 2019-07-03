class Food < ApplicationRecord
    has_many :food_months
    has_many :months, through: :food_months
    has_many :shopping_list_items
    has_many :users, through: :shopping_list_items
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
end
