class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
