class RenameFarmerColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :farmer, :isFarmer
  end
end
