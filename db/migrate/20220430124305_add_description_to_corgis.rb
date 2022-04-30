class AddDescriptionToCorgis < ActiveRecord::Migration[6.1]
  def change
    add_column :corgis, :description, :string
    add_column :corgis, :price, :float
  end
end
