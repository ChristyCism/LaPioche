class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :confirmation
      t.bigint :client_id
      t.bigint :farmer_id
      t.integer :duration
      t.integer :total_amount
      t.date :date

      t.timestamps
    end


    add_foreign_key :bookings, :users, column: :client_id
    add_foreign_key :bookings, :users, column: :farmer_id

    add_index :bookings, :client_id
    add_index :bookings, :farmer_id

  end
end
