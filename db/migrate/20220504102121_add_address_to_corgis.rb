class AddAddressToCorgis < ActiveRecord::Migration[6.1]
  def change
    add_column :corgis, :address, :string
  end
end
