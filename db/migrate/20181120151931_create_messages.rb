class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.bigint :sender_id
      t.bigint :receiver_id
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
