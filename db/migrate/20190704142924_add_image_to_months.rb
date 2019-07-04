class AddImageToMonths < ActiveRecord::Migration[5.2]
  def change
    add_column :months, :image, :string
  end
end
