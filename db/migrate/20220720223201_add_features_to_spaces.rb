class AddFeaturesToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :features, :string, array: true, default:'{}'
  end
end
