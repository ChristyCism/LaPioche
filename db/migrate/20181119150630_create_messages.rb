class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.bigint :sender_id
      t.bigint :receiver_id
      t.string :content

      t.timestamps
    end

    add_foreign_key :messages, :users, column: :sender_id
    add_foreign_key :messages, :users, column: :receiver_id

    add_index :messages, :sender_id
    add_index :messages, :receiver_id
  end
end
