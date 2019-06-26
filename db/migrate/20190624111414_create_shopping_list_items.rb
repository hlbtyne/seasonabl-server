class CreateShoppingListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_list_items do |t|
      t.references :user, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
