class AddPhotoToCorgis < ActiveRecord::Migration[6.1]
  def change
    add_column :corgis, :photo
  end
end
