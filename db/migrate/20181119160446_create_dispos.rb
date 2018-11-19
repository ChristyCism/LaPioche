class CreateDispos < ActiveRecord::Migration[5.2]
  def change
    create_table :dispos do |t|
      t.bigint :farmer_id
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday

      t.timestamps
    end

    add_foreign_key :dispos, :users, column: :farmer_id

    add_index :dispos, :farmer_id

  end
end
