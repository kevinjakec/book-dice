class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :book, null: false, foreign_key: true
      t.references :reviewer, null: false, foreign_key: { to_table: :users, deferred: true }
      t.text :body
      t.references :comments, null: true, foreign_key: true, deferred: true
      t.timestamps
    end
  end
end
