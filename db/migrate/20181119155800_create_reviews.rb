class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :rating
      t.bigint :reviewee_id
      t.bigint :reviewer_id

      t.timestamps
    end

    add_foreign_key :reviews, :users, column: :reviewee_id
    add_foreign_key :reviews, :users, column: :reviewer_id

    add_index :reviews, :reviewee_id
    add_index :reviews, :reviewer_id

  end
end
