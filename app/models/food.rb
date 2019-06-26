class Food < ApplicationRecord
    has_many :food_months
    has_many :months, through: :food_months
    has_many :shopping_list_items
    has_many :users, through: :shopping_list_items

end
