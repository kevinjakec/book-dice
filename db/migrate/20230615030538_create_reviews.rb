class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :reviewer, null: false, foreign_key: { to_table: :users }
      t.text :body
      t.references :comments, null: false, foreign_key: true
      t.timestamps
    end
  end
end
