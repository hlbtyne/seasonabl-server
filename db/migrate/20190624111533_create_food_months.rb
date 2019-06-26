class CreateFoodMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :food_months do |t|
      t.references :food, foreign_key: true
      t.references :month, foreign_key: true

      t.timestamps
    end
  end
end
