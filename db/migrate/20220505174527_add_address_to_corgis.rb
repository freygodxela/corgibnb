class AddAddressToCorgis < ActiveRecord::Migration[6.1]
  def change
    add_column :corgis, :address, :string
    add_column :corgis, :latitude, :float
    add_column :corgis, :longitude, :float
  end
end
