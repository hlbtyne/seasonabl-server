class Month < ApplicationRecord
    has_many :food_months
    has_many :foods, through: :food_months
end
