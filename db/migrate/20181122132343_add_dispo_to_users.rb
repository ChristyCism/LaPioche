class AddDispoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dispo, :string
  end
end
