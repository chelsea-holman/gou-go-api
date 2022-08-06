class AddPetInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dog_name, :string
    add_column :users, :picture_url, :string
  end
end
