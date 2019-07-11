class User < ApplicationRecord
    has_many :shopping_list_items
    has_many :foods, through: :shopping_list_items
    has_many :user_recipes
    has_many :recipes, through: :user_recipes

    has_secure_password

    # validates [:name, :password], presence: true
    # validates :name, uniqueness: { case_sensitive: true }
end
