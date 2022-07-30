class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.string :user
      t.string :image
      t.integer :space_id

      t.timestamps
    end
  end
end
