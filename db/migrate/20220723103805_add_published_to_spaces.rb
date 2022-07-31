class AddPublishedToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :published, :boolean, default: false
  end
end
