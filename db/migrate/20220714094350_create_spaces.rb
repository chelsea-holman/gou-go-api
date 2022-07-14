class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :image
      t.string :access
      t.string :features
      t.integer :user_id

      t.timestamps
    end
  end
end
