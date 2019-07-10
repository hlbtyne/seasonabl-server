class AddApiIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :api_id, :integer
  end
end
