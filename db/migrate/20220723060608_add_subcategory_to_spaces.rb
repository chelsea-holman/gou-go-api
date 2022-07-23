class AddSubcategoryToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :sub_category, :string
    add_column :spaces, :longitude, :float
    add_column :spaces, :latitude, :float
  end
end
