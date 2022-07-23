class RemoveCategoriesFromSpaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :spaces, :categories, :integer, array: true
  end
end
