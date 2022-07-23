class RemoveFeaturesFromSpaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :spaces, :features, :string
  end
end
