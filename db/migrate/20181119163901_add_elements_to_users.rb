class AddElementsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :bio, :string
    add_column :users, :profile_picture, :string
    add_column :users, :photos, :string
    add_column :users, :farmer, :boolean
    add_column :users, :skills, :string
    add_column :users, :price, :integer
    add_column :users, :totem_tool, :string

  end
end
