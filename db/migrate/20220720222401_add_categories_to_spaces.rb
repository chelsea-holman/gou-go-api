class AddCategoriesToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :categories, :integer, array: true, default:'{}'
  end
end
